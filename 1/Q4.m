clear all
clc

t=-10:0.0001:10
f=2*exp(i*(t+pi/4))
r=real(f)
im=imag(f)
a=abs(f)
an=angle(f).*180./pi

subplot(2,2,1)
plot(t,r)
title('real')

subplot(2,2,2)
plot(t,im)
title('imag')

subplot(2,2,3)
plot(t,a)
title('abs')

subplot(2,2,4)
plot(t,an)
title('ngle')
