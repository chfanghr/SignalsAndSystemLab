clear all
clc

t=-10:0.1:10
y=sinc(t)
subplot(5,1,1)
plot(t,y)
title('sinc')

fs = 10000
t = -1:1/fs:1
y = rectpuls(t,20e-3)
subplot(5,1,2)
plot(t,y)
axis([-0.1 0.1 -0.2 1.2])
title("rectpuls")

t=-2.5*pi:0.001:2.5*pi
y=square(t+pi/2,50)/2+0.5
subplot(5,1,3)
plot(t/pi,y)
title('square')
ylim([-0.5,2])

fs = 10000
t = -1:1/fs:1
y = tripuls(t,20e-3)
subplot(5,1,4)
plot(t,y)
axis([-0.1 0.1 -0.2 1.2])
title("tripuls")

t=-2.5*pi:0.001:2.5*pi
y=sawtooth(t+pi/2)/2+0.5
subplot(5,1,5)
plot(t,y)
title("sawtooth")
