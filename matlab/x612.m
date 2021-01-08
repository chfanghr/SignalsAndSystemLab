clear all;
x1=-5:0.08:0;
y1=-3:0.08:3;
[x y]=meshgrid(x1,y1);
s=x+i*y;
FS=abs(1./((s+3).*(s+3)+1));
mesh(x,y,FS);
surf(x,y,FS);
zlim([-0.01 5.5])
colormap(hsv);
