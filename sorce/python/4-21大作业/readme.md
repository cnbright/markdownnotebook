# 作业9 大作业

## 杜炳毅 SQT2100703054

源代码：大作业.ipynb

数据处理：见程序，motion.gif为64粒子单次模拟全体粒子位置随迭代次数的变化



------



- 1 , 在半径R=1圆内分布随机产生 $8,16,32,64$ 个粒子, 每个粒子质量 $m=1$, 它们之间两两存在 相互作用力 $F=1 / r^{2} \times 10^{-2}$ ，其中r为两个粒子之间 距离。与边界的作用力是 $100^{*} \exp (-\mathrm{d}), \mathrm{d}$ 为粒子 到边界的最短距离。空间格点数为 $1000 \times 1000$, 选择合适的时间步长, 模拟得到稳定态的过程并 作出最后分布图。
- 2 , 分析100次的模拟结果。
- 3, 给出上例并行算法的思路和电路图。

# 运动方程离散

把牛二改成$F = mv$

有运动方程
$$
m\frac{\partial x_n}{\partial t} = -100\cdot e^{-d}\cdot\frac{x_n}{\sqrt{x_n^2+y_n^2}} 
+ \sum\limits_{i}^{i\ne n}  \frac{1}{r_{i,n}^2 }\times 10^{-2}\cdot\frac{ x_i-x_n }{r_{i,n}}
\\
m\frac{\partial y_n}{\partial t} = -100\cdot e^{-d}\cdot\frac{y_n}{\sqrt{x_n^2+y_n^2}} 
+ \sum\limits_{i}^{i\ne n}  \frac{1}{r_{i,n}^2 }\times 10^{-2}\cdot\frac{ y_i-y_n }{r_{i,n}}
$$
一阶向前差分格式，离散有
$$
m\cdot \frac{x_{n,t+1} - x_{n,t}}{\tau} = -100\cdot e^{-d}\cdot\frac{x_n}{\sqrt{x_n^2+y_n^2}} 
+ \sum\limits_{i}^{i\ne n}  \frac{1}{r_{i,n}^2 }\times 10^{-2}\cdot\frac{ x_i-x_n }{r_{i,n}}
\\
m\cdot \frac{y_{n,t+1} - y_{n,t}}{\tau}  = -100\cdot e^{-d}\cdot\frac{y_n}{\sqrt{x_n^2+y_n^2}} 
+ \sum\limits_{i}^{i\ne n}  \frac{1}{r_{i,n}^2 }\times 10^{-2}\cdot\frac{ y_i-y_n }{r_{i,n}}
$$
移项
$$
x_{n,t+1} =
\frac{\tau}{m}\cdot\left(
-100\cdot e^{-d}\cdot\frac{x_n}{\sqrt{x_n^2+y_n^2}} 
+ \sum\limits_{i}^{i\ne n}  \frac{1}{r_{i,n}^2 }\times 10^{-2}\cdot\frac{ x_i-x_n }{r_{i,n}}\right) 
+ x_{n,t}
\\
y_{n,t+1} =
\frac{\tau}{m}\cdot\left(
-100\cdot e^{-d}\cdot\frac{y_n}{\sqrt{x_n^2+y_n^2}} 
+ \sum\limits_{i}^{i\ne n}  \frac{1}{r_{i,n}^2 }\times 10^{-2}\cdot\frac{ y_i-y_n }{r_{i,n}}\right) 
+ y_{n,t}
$$

## 结果

源码：
