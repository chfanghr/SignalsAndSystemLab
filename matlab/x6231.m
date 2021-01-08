clear all;
syms t;
F=str2sym('(3*s+13)/(s^2+3*s+2)');
ft=ilaplace(F);
ezplot(t,ft);
grid on;
