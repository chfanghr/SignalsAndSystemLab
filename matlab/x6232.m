clear all;
syms t;
F=str2sym('4/((s+2)*(s^2+3*s+2))');
ft=ilaplace(F);
ezplot(t,ft);
grid on;
