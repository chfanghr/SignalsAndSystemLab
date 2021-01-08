clear all;
N1=1024;
t_length=40;
T1=t_length/N1;
t3=(0:N1-1)*T1-t_length/2;
f3=stepfun(t3,-0.25)-stepfun(t3,0.25);
%plot(t,f)
w_length=2*pi/T1;
W1=w_length/N1;
F1=T1*fft(f3,N1);
F1=fftshift(F1);
figure
w=(0:N1-1)*W1-w_length/2;
subplot(211);
plot(w,abs(F1));
axis([-30 30 0 0.6]);
grid on;
title('FFT')
 
t1=-0.25;
t2=0.25;
T=t2-t1;
delta_t=0.01;
N=T/delta_t;
t=-0.25:delta_t:0.25;
f=stepfun(t,-0.25)-stepfun(t,0.25);
 
w1=-2*pi;
w2=2*pi;
W=w2-w1;
delta_w=0.01;
K=W/delta_w;
w=-10*pi:delta_w:10*pi;
 
F=delta_t*f*exp(-j*t'*w);
f1=abs(F);
subplot(212);
plot(w,f1,'r');
grid on;
axis([-30 30 0 0.6]);
title('一般傅里叶变换');
