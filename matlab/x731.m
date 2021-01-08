clear all;
N1=1024;
t_length=40;
T1=t_length/N1;
t3=(0:N1-1)*T1-t_length/2;
f3=stepfun(t3,-0.5)-stepfun(t3,0.5);
%plot(t,f)
w_length=2*pi/T1;
W1=w_length/N1;
F1=T1*fft(f3,N1);
F1=fftshift(F1);
figure
w=(0:N1-1)*W1-w_length/2;
subplot(211);
plot(w,abs(F1));
axis([-30 30 0 1.2]);
grid on;
title('FFT')
 
t1=-0.5;
t2=0.5;
T=t2-t1;
delta_t=0.01;
N=T/delta_t;
t=-0.5:delta_t:0.5;
f=stepfun(t,-0.5)-stepfun(t,0.5);
 
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
axis([-30 30 0 1.2]);
title('一般傅里叶变换');
