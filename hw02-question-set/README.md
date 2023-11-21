# SSE315 计算机图形学 Computer Graphics

# 第2次作业 - Answer Sheet

## 1.

### （1）**sampling**

信号频率太高，而采样率有限，导致在该采样率下样本看起来就像低频信号。而这种在给定采样率下无法区分的两个频率就是走样aliasing。两个例子：

- 数字音频走样：在将模拟音频转换为数字音频时，如果采样频率过低，高频部分的信号将被混叠，听起来就像低频声音，导致声音变得失真或不自然。
- 视频走样：当拍摄或播放快速运动的视频时，可能会出现运动模糊或细节失真的走样效应。如逆时针旋转的车轮，由于转速过快，在某段时刻看起来就像顺时针旋转。

### （2）**geometry**

- 隐式表示不直接知道具体的点，但知道它们满足某些关系 $f(x, y, z) = 0$ ，难采样，容易判断是否在曲面内部/外部。

  - 代数曲面
  - 构造性立体几何
  - 滴状曲面
  - 混合距离函数
  - 水平集方法
  - 分形
  
- 显示表示直接给出所有的点 $f : \mathbb{R}^2 \to \mathbb{R}^3; (u,v)\to(x,y,z)$ ，容易采样，难进行内部/外部测试。

  - 点云
  - 多边形网格
  - 三角形网格
  - 贝塞尔曲线
  - 分段贝塞尔曲线
  - Rational B-Splines
  - NURBS
  - 细分曲面

### （3）**linear algebra**

一个映射是线性的，当且仅当它可以表示为 

$$f(u_1,...u_m) = \sum\limits_{i=1}^m {u_i\mathbf{a}_i}$$

## 2.

### （1）**Bezier curve**

二次贝塞尔曲线方程为：

$$B(x)=(1-x)^2P_0+2x(1-x)P_1+x^2P_2$$

即：

$$B(x)=(1-x)^2\cdot(0,0)+2x(1-x)\cdot(1,0)+x^2\cdot(1,1)$$

最终化简为：

$$B(x)=(2x-x^2,x^2)$$

### （2）**geometry**

伯恩斯坦基的优点：

- 局部性：每个基函数仅在一个小的参数范围内起作用。这使得它在一些需要精确控制曲线形状的应用中更加灵活。
- 凸组合：曲线上的每个点都是相邻控制点的加权平均，使得曲线更容易分析和控制。
- 插值性：可用于插值问题，确保曲线经过给定的控制点。

## 3. **ray geometry interact**

光线 $\mathbf{o}=(1,1),\mathbf{d}=[1,1]$ ：
$$
t_{x_0}=\frac{x_0-\mathbf{o}_x}{\mathbf{d}_x}=1
$$

$$
t_{x_1}=\frac{x_1-\mathbf{o}_x}{\mathbf{d}_x}=3
$$

$$
t_{y_0}=\frac{y_0-\mathbf{o}_y}{\mathbf{d}_y}=0
$$

$$
t_{y_1}=\frac{y_1-\mathbf{o}_y}{\mathbf{d}_y}=2
$$

$$
t_{min}=max(t_{x_0},t_{y_0})=1
$$

$$
t_{max}=min(t_{x_1},t_{y_1})=2
$$

$$
\because 0\leq t_{min}\textless t_{max}
$$

$$
\therefore光线\mathbf{o}=(1,1),\mathbf{d}=[1,1]与长方形相交
$$

光线 $\mathbf{o}=(1,2),\mathbf{d}=[1,1]$ ：
$$
t_{x_0}=\frac{x_0-\mathbf{o}_x}{\mathbf{d}_x}=1
$$

$$
t_{x_1}=\frac{x_1-\mathbf{o}_x}{\mathbf{d}_x}=3
$$

$$
t_{y_0}=\frac{y_0-\mathbf{o}_y}{\mathbf{d}_y}=-1
$$

$$
t_{y_1}=\frac{y_1-\mathbf{o}_y}{\mathbf{d}_y}=1
$$

$$
t_{min}=max(t_{x_0},t_{y_0})=1
$$

$$
t_{max}=min(t_{x_1},t_{y_1})=1
$$

$$
\because t_{min}=t_{max}
$$

$$
\therefore光线\mathbf{o}=(1,2),\mathbf{d}=[1,1]没有与长方形相交
$$

光线 $\mathbf{o}=(1,1),\mathbf{d}=[1,-1]$ ：
$$
t_{x_0}=\frac{x_0-\mathbf{o}_x}{\mathbf{d}_x}=1
$$

$$
t_{x_1}=\frac{x_1-\mathbf{o}_x}{\mathbf{d}_x}=3
$$

$$
t_{y_0}=\frac{y_0-\mathbf{o}_y}{\mathbf{d}_y}=0
$$

$$
t_{y_1}=\frac{y_1-\mathbf{o}_y}{\mathbf{d}_y}=-2
$$

$$
t_{min}=max(t_{x_0},t_{y_1})=1
$$

$$
t_{max}=min(t_{x_1},t_{y_0})=0
$$

$$
\because t_{min}>t_{max}
$$

$$
\therefore光线\mathbf{o}=(1,1),\mathbf{d}=[1,-1]没有与长方形相交
$$

## 4. spatial transformation

### （1）

假设鸭大校徽的本体坐标为 $(0,0)$ ，变换后的本体坐标为 $(1,2)$ 。

首先顺时针旋转 $\frac{\pi}{4}$ ，然后关于y轴反射，最后平移。


$$
\begin{bmatrix}
\cos\frac{\pi}{4} & -\sin\frac{\pi}{4} \\
\sin\frac{\pi}{4} & \cos\frac{\pi}{4} \\
\end{bmatrix}
$$


## 5. ray geo interact acc

### （1）

将KD树逆时针旋转90°表示。

```bash
    ┌── e
┌── C
│   └── d
A
│       ┌── b
│   ┌── D
│   │   └── a
└── B
    └── c
```

每个叶子节点所包含的三角形的编号：

- a：5
- b：6
- c：1，2
- d：4，7
- e：3

### （2）

A -> B -> D -> a -> b -> c

### （3）

$$
\phi_0(x)=\frac{area(p,p_1,p_2)}{area(p_0,p_1,p_2)}=\frac{1}{5}
$$

$$
\phi_1(x)=\frac{area(p,p_0,p_2)}{area(p_0,p_1,p_2)}=\frac{2}{5}
$$

$$
\phi_2(x)=\frac{area(p,p_0,p_1)}{area(p_0,p_1,p_2)}=\frac{2}{5}
$$



重心坐标为 $(\frac{1}{5},\frac{2}{5},\frac{2}{5})$ 。
