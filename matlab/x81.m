x1=str2sym('(1/2)^k*cos(k*pi/2)*heaviside(k)');
Z1=ztrans(x1);
Z1=simplify(Z1)

x2=str2sym('k*(k-1)*(2/3)^k*heaviside(k)');
Z2=ztrans(x2);
Z2=simplify(Z2)

x3=str2sym('heaviside(k)-heaviside(k-5)');
Z3=ztrans(x3);
Z3=simplify(Z3)

x4=str2sym('k*(k-1)*(heaviside(k)-heaviside(k-5))');
Z4=ztrans(x4); 
Z4=simplify(Z4)
