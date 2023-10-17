# 作业-1 DrawSVG

## Linux构建说明

安装cmake和freetype（远远不够）

配置环境详见：

[Conversation with ChatGPT on Poe](https://poe.com/s/L532lNZhy4TIsVuyaXP9)

## 虚拟机迁移后无法联网

虚拟机迁移后遇到突然连不上网的问题

- 宿主windows中，settings -> Betwork & internet -> Advanced network settings，允许虚拟机的网络适配器

- 虚拟机中
  
  ```powershell
  sudo dhclient ens33
  ```

## Bresenham算法参考

[【附源码】布雷森汉姆直线算法(bresenham‘s line algorithm)_*布雷森汉姆线算法-CSDN博客](https://blog.csdn.net/u011341856/article/details/118788353)

[Bresenham画直线算法（所有斜率） - 明明1109 - 博客园](https://www.cnblogs.com/fortunely/p/17660786.html)

## lambda

```cpp
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
                rasterize_point(x_start, y_start, color);
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
```

## Task 4

可能需要自己定义supersample_target

参考：

https://poe.com/s/ai24J7QiLwJG5x0tv4Gk
