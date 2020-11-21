clear all
clc

syms tao
t=sym('t','positive')

f=exp(-t)
h=t^2*exp(-2*t)
y_tao=subs(f,t,tao)*subs(h,t,t-tao)

y=int(y_tao,tao,0,t)
ezplot(y,[0,15])
grid on