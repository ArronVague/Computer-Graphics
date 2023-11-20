#include "software_renderer.h"

#include <cmath>
#include <vector>
#include <iostream>
#include <algorithm>
#include <functional>

#include "triangulation.h"

using namespace std;

namespace CMU462
{

    // Implements SoftwareRenderer //

    void SoftwareRendererImp::draw_svg(SVG &svg)
    {

        // set top level transformation
        transformation = svg_2_screen;

        // draw all elements
        for (size_t i = 0; i < svg.elements.size(); ++i)
        {
            draw_element(svg.elements[i]);
        }

        // draw canvas outline
        Vector2D a = transform(Vector2D(0, 0));
        a.x--;
        a.y--;
        Vector2D b = transform(Vector2D(svg.width, 0));
        b.x++;
        b.y--;
        Vector2D c = transform(Vector2D(0, svg.height));
        c.x--;
        c.y++;
        Vector2D d = transform(Vector2D(svg.width, svg.height));
        d.x++;
        d.y++;

        rasterize_line(a.x, a.y, b.x, b.y, Color::Black);
        rasterize_line(a.x, a.y, c.x, c.y, Color::Black);
        rasterize_line(d.x, d.y, b.x, b.y, Color::Black);
        rasterize_line(d.x, d.y, c.x, c.y, Color::Black);

        // resolve and send to render target
        resolve();
    }

    void SoftwareRendererImp::set_sample_rate(size_t sample_rate)
    {

        // Task 4:
        // You may want to modify this for supersampling support
        this->sample_rate = sample_rate;

        this->buffer_w = this->target_w * this->sample_rate;
        this->buffer_h = this->target_h * this->sample_rate;
        this->sample_buffer.resize(4 * this->buffer_w * this->buffer_h);
        memset(sample_buffer.data(), 255, 4 * buffer_w * buffer_h);
    }

    void SoftwareRendererImp::set_render_target(unsigned char *render_target,
                                                size_t width, size_t height)
    {

        // Task 4:
        // You may want to modify this for supersampling support
        this->render_target = render_target;
        this->target_w = width;
        this->target_h = height;

        this->buffer_w = this->target_w * this->sample_rate;
        this->buffer_h = this->target_h * this->sample_rate;
        this->sample_buffer.resize(4 * this->buffer_w * this->buffer_h);
        memset(sample_buffer.data(), 255, 4 * buffer_w * buffer_h);
    }

    void SoftwareRendererImp::draw_element(SVGElement *element)
    {

        // Task 5 (part 1):
        // Modify this to implement the transformation stack

        switch (element->type)
        {
        case POINT:
            draw_point(static_cast<Point &>(*element));
            break;
        case LINE:
            draw_line(static_cast<Line &>(*element));
            break;
        case POLYLINE:
            draw_polyline(static_cast<Polyline &>(*element));
            break;
        case RECT:
            draw_rect(static_cast<Rect &>(*element));
            break;
        case POLYGON:
            draw_polygon(static_cast<Polygon &>(*element));
            break;
        case ELLIPSE:
            draw_ellipse(static_cast<Ellipse &>(*element));
            break;
        case IMAGE:
            draw_image(static_cast<Image &>(*element));
            break;
        case GROUP:
            draw_group(static_cast<Group &>(*element));
            break;
        default:
            break;
        }
    }

    // Primitive Drawing //

    void SoftwareRendererImp::draw_point(Point &point)
    {

        Vector2D p = transform(point.position);
        rasterize_point(p.x, p.y, point.style.fillColor);
    }

    void SoftwareRendererImp::draw_line(Line &line)
    {

        Vector2D p0 = transform(line.from);
        Vector2D p1 = transform(line.to);
        rasterize_line(p0.x, p0.y, p1.x, p1.y, line.style.strokeColor);
    }

    void SoftwareRendererImp::draw_polyline(Polyline &polyline)
    {

        Color c = polyline.style.strokeColor;

        if (c.a != 0)
        {
            int nPoints = polyline.points.size();
            for (int i = 0; i < nPoints - 1; i++)
            {
                Vector2D p0 = transform(polyline.points[(i + 0) % nPoints]);
                Vector2D p1 = transform(polyline.points[(i + 1) % nPoints]);
                rasterize_line(p0.x, p0.y, p1.x, p1.y, c);
            }
        }
    }

    void SoftwareRendererImp::draw_rect(Rect &rect)
    {

        Color c;

        // draw as two triangles
        float x = rect.position.x;
        float y = rect.position.y;
        float w = rect.dimension.x;
        float h = rect.dimension.y;

        Vector2D p0 = transform(Vector2D(x, y));
        Vector2D p1 = transform(Vector2D(x + w, y));
        Vector2D p2 = transform(Vector2D(x, y + h));
        Vector2D p3 = transform(Vector2D(x + w, y + h));

        // draw fill
        c = rect.style.fillColor;
        if (c.a != 0)
        {
            rasterize_triangle(p0.x, p0.y, p1.x, p1.y, p2.x, p2.y, c);
            rasterize_triangle(p2.x, p2.y, p1.x, p1.y, p3.x, p3.y, c);
        }

        // draw outline
        c = rect.style.strokeColor;
        if (c.a != 0)
        {
            rasterize_line(p0.x, p0.y, p1.x, p1.y, c);
            rasterize_line(p1.x, p1.y, p3.x, p3.y, c);
            rasterize_line(p3.x, p3.y, p2.x, p2.y, c);
            rasterize_line(p2.x, p2.y, p0.x, p0.y, c);
        }
    }

    void SoftwareRendererImp::draw_polygon(Polygon &polygon)
    {

        Color c;

        // draw fill
        c = polygon.style.fillColor;
        if (c.a != 0)
        {

            // triangulate
            vector<Vector2D> triangles;
            triangulate(polygon, triangles);

            // draw as triangles
            for (size_t i = 0; i < triangles.size(); i += 3)
            {
                Vector2D p0 = transform(triangles[i + 0]);
                Vector2D p1 = transform(triangles[i + 1]);
                Vector2D p2 = transform(triangles[i + 2]);
                rasterize_triangle(p0.x, p0.y, p1.x, p1.y, p2.x, p2.y, c);
            }
        }

        // draw outline
        c = polygon.style.strokeColor;
        if (c.a != 0)
        {
            int nPoints = polygon.points.size();
            for (int i = 0; i < nPoints; i++)
            {
                Vector2D p0 = transform(polygon.points[(i + 0) % nPoints]);
                Vector2D p1 = transform(polygon.points[(i + 1) % nPoints]);
                rasterize_line(p0.x, p0.y, p1.x, p1.y, c);
            }
        }
    }

    void SoftwareRendererImp::draw_ellipse(Ellipse &ellipse)
    {

        // Extra credit
    }

    void SoftwareRendererImp::draw_image(Image &image)
    {

        Vector2D p0 = transform(image.position);
        Vector2D p1 = transform(image.position + image.dimension);

        rasterize_image(p0.x, p0.y, p1.x, p1.y, image.tex);
    }

    void SoftwareRendererImp::draw_group(Group &group)
    {

        for (size_t i = 0; i < group.elements.size(); ++i)
        {
            draw_element(group.elements[i]);
        }
    }

    // Rasterization //

    void SoftwareRendererImp::rasterize_sample_point(float x, float y, Color color)
    {
        int sx = (int)floor(x);
        int sy = (int)floor(y);

        // check bounds
        if (sx < 0 || sx >= buffer_w)
            return;
        if (sy < 0 || sy >= buffer_h)
            return;

        // fill sample - NOT doing alpha blending!
        sample_buffer[4 * (sx + sy * buffer_w)] = (uint8_t)(color.r * 255);
        sample_buffer[4 * (sx + sy * buffer_w) + 1] = (uint8_t)(color.g * 255);
        sample_buffer[4 * (sx + sy * buffer_w) + 2] = (uint8_t)(color.b * 255);
        sample_buffer[4 * (sx + sy * buffer_w) + 3] = (uint8_t)(color.a * 255);
    }
    // The input arguments in the rasterization functions
    // below are all defined in screen space coordinates

    void SoftwareRendererImp::rasterize_point(float x, float y, Color color)
    {

        // fill in the nearest pixel
        // int sx = (int)floor(x);
        // int sy = (int)floor(y);

        // // check bounds
        // if (sx < 0 || sx >= target_w)
        //     return;
        // if (sy < 0 || sy >= target_h)
        //     return;

        // // fill sample - NOT doing alpha blending!
        // render_target[4 * (sx + sy * target_w)] = (uint8_t)(color.r * 255);
        // render_target[4 * (sx + sy * target_w) + 1] = (uint8_t)(color.g * 255);
        // render_target[4 * (sx + sy * target_w) + 2] = (uint8_t)(color.b * 255);
        // render_target[4 * (sx + sy * target_w) + 3] = (uint8_t)(color.a * 255);
        x *= sample_rate;
        y *= sample_rate;
        rasterize_sample_point(x, y, color);
        return;
    }

    float getGrandient(float x)
    {
        return 1.0 - (x - floor(x));
    }

    void SoftwareRendererImp::rasterize_line(float x0, float y0,
                                             float x1, float y1,
                                             Color color)
    {

        // Task 2:
        // Implement line rasterization

        // Bresenham's line algorithm
        // 通过[this]捕获this，从而在lambda函数内部调用成员函数
        function<void(float, float, float, float, Color)> Bresenham = [this](float x0, float y0, float x1, float y1, Color color)
        {
            int x_start = (int)floor(x0);
            int y_start = (int)floor(y0);
            int x_end = (int)floor(x1);
            int y_end = (int)floor(y1);

            int dx = abs(x_end - x_start);
            int dy = abs(y_end - y_start);
            int sx = (x_start < x_end) ? 1 : -1;
            int sy = (y_start < y_end) ? 1 : -1;
            int err = dx - dy;

            while (true)
            {
                rasterize_sample_point(x_start, y_start, color);
                if (x_start == x_end && y_start == y_end)
                {
                    break;
                }
                int e2 = 2 * err;
                if (e2 > -dy)
                {
                    err -= dy;
                    x_start += sx;
                }
                if (e2 < dx)
                {
                    err += dx;
                    y_start += sy;
                }
            }
        };
        x0 *= sample_rate;
        y0 *= sample_rate;
        x1 *= sample_rate;
        y1 *= sample_rate;

        Bresenham(x0, y0, x1, y1, color);

        // bool steep = abs(y1 - y0) > abs(x1 - x0);
        // if (steep)
        // {
        //     swap(x0, y0);
        //     swap(x1, y1);
        // }
        // if (x0 > x1)
        // {
        //     swap(x0, x1);
        //     swap(y0, y1);
        // }

        // float dx = x1 - x0;
        // float dy = y1 - y0;
        // float gradient = dy / dx;

        // float xend = round(x0);
        // float yend = y0 + gradient * (xend - x0);
        // float xgap = getGrandient(x0 + 0.5);
        // float xpxl1 = xend;
        // float ypxl1 = floor(yend);

        // if (steep)
        // {
        //     rasterize_point(ypxl1, xpxl1, color);
        //     rasterize_point(ypxl1 + 1, xpxl1, color);
        // }
        // else
        // {
        //     rasterize_point(xpxl1, ypxl1, color);
        //     rasterize_point(xpxl1, ypxl1 + 1, color);
        // }

        // float intery = yend + gradient;

        // xend = round(x1);
        // yend = y1 + gradient * (xend - x1);
    }

    void SoftwareRendererImp::rasterize_triangle(float x0, float y0,
                                                 float x1, float y1,
                                                 float x2, float y2,
                                                 Color color)
    {
        // Task 3:
        // Implement triangle rasterization
        x0 *= sample_rate;
        y0 *= sample_rate;
        x1 *= sample_rate;
        y1 *= sample_rate;
        x2 *= sample_rate;
        y2 *= sample_rate;

        Vector2D p0 = Vector2D(x0, y0);
        Vector2D p1 = Vector2D(x1, y1);
        Vector2D p2 = Vector2D(x2, y2);

        int minX = floor(min(min(p0.x, p1.x), p2.x));
        int maxX = ceil(max(max(p0.x, p1.x), p2.x));
        int minY = floor(min(min(p0.y, p1.y), p2.y));
        int maxY = ceil(max(max(p0.y, p1.y), p2.y));

        for (int y = minY; y <= maxY; y++)
        {
            for (int x = minX; x <= maxX; x++)
            {
                Vector2D pixel = Vector2D(x + 0.5, y + 0.5);

                Vector2D d0 = p0 - pixel;
                Vector2D d1 = p1 - pixel;
                Vector2D d2 = p2 - pixel;

                float cross0 = cross(d0, d1);
                float cross1 = cross(d1, d2);
                float cross2 = cross(d2, d0);

                if (cross0 >= 0 && cross1 >= 0 && cross2 >= 0)
                {
                    rasterize_sample_point(x, y, color);
                }
            }
        }
    }

    void SoftwareRendererImp::rasterize_image(float x0, float y0,
                                              float x1, float y1,
                                              Texture &tex)
    {
        // Task 6:
        // Implement image rasterization
    }

    // resolve samples to render target
    void SoftwareRendererImp::resolve(void)
    {

        // Task 4:
        // Implement supersampling
        // You may also need to modify other functions marked with "Task 4".
        memset(render_target, 255, 4 * target_w * target_h);
        if (sample_rate == 1)
        {
            memcpy(render_target, sample_buffer.data(), 4 * target_w * target_h);
        }
        else
        {
            for (int x = 0; x < target_w; x++)
            {
                for (int y = 0; y < target_h; y++)
                {
                    unsigned int r = 0, g = 0, b = 0, a = 0;
                    for (int i = x * sample_rate; i < (x + 1) * sample_rate; i++)
                    {
                        for (int j = y * sample_rate; j < (y + 1) * sample_rate; j++)
                        {
                            r += sample_buffer[4 * (i + j * buffer_w) + 0];
                            g += sample_buffer[4 * (i + j * buffer_w) + 1];
                            b += sample_buffer[4 * (i + j * buffer_w) + 2];
                            a += sample_buffer[4 * (i + j * buffer_w) + 3];
                        }
                    }
                    render_target[4 * (x + y * target_w) + 0] = (uint8_t)(r / (sample_rate * sample_rate));
                    render_target[4 * (x + y * target_w) + 1] = (uint8_t)(g / (sample_rate * sample_rate));
                    render_target[4 * (x + y * target_w) + 2] = (uint8_t)(b / (sample_rate * sample_rate));
                    render_target[4 * (x + y * target_w) + 3] = (uint8_t)(a / (sample_rate * sample_rate));
                }
            }
        }
        memset(sample_buffer.data(), 255, 4 * buffer_w * buffer_h);
        return;
    }

} // namespace CMU462
