 先对原方程做变换
$$
 y(x) \left(\lambda ^2 \text{q1}(x)+\text{q2}(x)\right)+y''(x)=0\text{/.}\, \left\{y(x)\to \frac{v(x)}{\psi (x)},y''(x)\to \frac{\partial ^2}{\partial x^2}\frac{v(x)}{\psi (x)}\right\}
$$
 有
$$
\frac{v(x) \left(\lambda ^2 \text{q1}(x)+\text{q2}(x)\right)}{\psi (x)}+\frac{v''(x)}{\psi (x)}-\frac{2 v'(x) \psi '(x)}{\psi (x)^2}+v(x) \left(\frac{2 \psi '(x)^2}{\psi (x)^3}-\frac{\psi ''(x)}{\psi (x)^2}\right)=0
$$
 再做变换
$$
 \frac{v(x) \left(\lambda ^2 \text{q1}(x)+\text{q2}(x)\right)}{\psi (x)}+\frac{v''(x)}{\psi (x)}-\frac{2 v'(x) \psi '(x)}{\psi (x)^2}+v(x) \left(\frac{2 \psi '(x)^2}{\psi (x)^3}-\frac{\psi ''(x)}{\psi (x)^2}\right)=0\text{/.}\, \left\{v'(x)\to v'(z) \frac{\partial \phi (x)}{\partial x},v''(x)\to \left\{\frac{\partial }{\partial x}\left(\frac{\partial \phi (x)}{\partial x} v'(z(x))\right)\text{/.}\, z'(x)\to \phi '(x)\right\}\right\}
$$
 有
$$
 \left\{\frac{v(x) \left(\lambda ^2 \text{q1}(x)+\text{q2}(x)\right)}{\psi (x)}-\frac{2 v'(z) \psi '(x) \phi '(x)}{\psi (x)^2}+\frac{\phi '(x)^2 v''(z(x))+\phi ''(x) v'(z(x))}{\psi (x)}+v(x) \left(\frac{2 \psi '(x)^2}{\psi (x)^3}-\frac{\psi ''(x)}{\psi (x)^2}\right)\right\}=0
$$
 Simplify得
$$
 \frac{v(x) \psi (x)^2 \left(\lambda ^2 \text{q1}(x)+\text{q2}(x)\right)-2 \psi (x) v'(z) \psi '(x) \phi '(x)+\psi (x)^2 \left(\phi '(x)^2 v''(z(x))+\phi ''(x) v'(z(x))\right)+v(x) \left(2 \psi '(x)^2-\psi (x) \psi ''(x)\right)}{\psi (x)^3}=0
$$
 约去分母
$$
 \lambda ^2 \text{q1}(x) v(x) \psi (x)^2+\text{q2}(x) v(x) \psi (x)^2+\psi (x)^2 \phi '(x)^2 v''(z(x))+\psi (x)^2 \phi ''(x) v'(z(x))-2 \psi (x) v'(z) \psi '(x) \phi '(x)-v(x) \psi (x) \psi ''(x)+2 v(x) \psi '(x)^2=0
$$
 对$v,v',v''$分类
$$
 \begin{aligned} 
 &v(x) \left(\lambda ^2 \text{q1}(x) \psi (x)^2+\text{q2}(x) \psi (x)^2-\psi (x) \psi ''(x)+2 \psi '(x)^2\right)
 \\+
 &\psi (x) v'(z(x)) \left(\psi (x) \phi ''(x)-2 \psi '(x) \phi '(x)\right)
 \\+
 &\psi (x)^2 \phi '(x)^2 v''(z(x))
 =0
 \end{aligned}
$$
 各项除$\psi (x)^2 \phi '(x)^2$有
$$
 \begin{aligned} 
 &\frac{v(x) \left(\lambda ^2 \text{q1}(x) \psi (x)^2+\text{q2}(x) \psi (x)^2-\psi (x) \psi ''(x)+2 \psi '(x)^2\right)}{\psi (x)^2 \phi '(x)^2}
 \\+
 &\frac{\psi (x) \phi ''(x) v'(z(x))-2 v'(z) \psi '(x) \phi '(x)}{\psi (x) \phi '(x)^2}
 \\+
 &v''(z(x))
 =0
 \end{aligned}
$$
 一、二提取$v/\phi'^2$和$v'/\phi'^2$，有
$$
 \lambda ^2 \text{q1}(x)+\text{q2}(x)-\frac{\psi ''(x)}{\psi (x)}+\frac{2 \psi '(x)^2}{\psi (x)^2}
 \\
 \phi ''(x)-\frac{2 \psi '(x) \phi '(x)}{\psi (x)}
$$
 利用，
$$
 \psi (x) \frac{\partial }{\partial x}\frac{\psi '(x)}{\psi (x)^2}=\frac{\psi ''(x)}{\psi (x)}-\frac{2 \psi '(x)^2}{\psi (x)^2}
$$
 即得到结果
$$
\frac{d^{2} v}{d z^{2}}+\frac{1}{\varphi^{\prime 2}}\left(\varphi^{\prime \prime}-\frac{2 \varphi^{\prime} \psi^{\prime}}{\psi}\right) \frac{d v}{d z}
+\frac{1}{\varphi^{\prime 2}}\left[\lambda^{2} q_{1}+q_{2}-\psi\left(\frac{\psi^{\prime}}{\psi^{2}}\right)^{\prime}\right] v=0
$$
