clear all
clc

fs=10000
t=-2:1/fs:4
ori=-(sign(t-1)+sign(t-2))
subplot(6,1,1)
plot(t, ori)
title('f(t)')
grid on

f=-(sign(1-t)+sign(2-t))
subplot(6,1,2)
plot(t, f)
title('f(-t)')
grid on

f=-(sign(t-3)+sign(t-4))
subplot(6,1,3)
plot(t, f)
title('f(t-2)')
grid on

f=-(sign(0.5*t-1)+sign(0.5*t-2))
subplot(6,1,4)
plot(t, f)
title('f(at) a=0.5')
grid on

f=-(sign(2*t-1)+sign(2*t-2))
subplot(6,1,5)
plot(t, f)
title('f(at) a=2')
grid on

f=-(sign(0.5*t+1-1)+sign(0.5*t+1-2))
subplot(6,1,6)
plot(t, f)
title('f(0.5t+1)')
grid on

