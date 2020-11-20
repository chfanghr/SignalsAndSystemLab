clear all
clc

t=-10:0.001:10
u=stepfun(t, 0)

f=(2-exp(-2.*t)).*u
subplot(2,2,1)
plot(t, f)
title('(1)')
grid on

u1=stepfun(t, 4)
f=cos(pi.*t./2).*(u-u1)
subplot(2,2,2)
plot(t, f)
title('(2)')
grid on

f=exp(t).*cos(t).*u
subplot(2,2,3)
plot(t, f)
title('(3)')
grid on

u2=stepfun(t, -2)
f=2/3.*t.*u2
subplot(2,2,4)
plot(t, f)
title('(4)')
grid on
