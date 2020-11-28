clear all
clc

delta = 0.01
% f1(t)=u(t)-u(t-1)
% f2(t)=u(t+1)-u(t)
% convolution: g3(t)=f1(t)*f2(t)

t1=0:delta:1
f1=stepfun(t1,0)-stepfun(t1,1)
subplot(3,1,1)
plot(t1,f1)
axis([-1.5,1.5,-0.1,1.1])
title('f1')
grid on

t2=-1:delta:0
f2=stepfun(t2,-1)-stepfun(t2,0)
subplot(3,1,2)
plot(t2,f2)
axis([-1.5,1.5,-0.1,1.1])
title('f2')
grid on

y=conv(f1,f2)*delta
n=length(y)
t_y=(0:n-1)*delta-1
subplot(3,1,3)
plot(t_y,y)
axis([-1.5,1.5,-0.1,1.1])
title('f1*f2')
grid on