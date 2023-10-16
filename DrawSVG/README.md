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


