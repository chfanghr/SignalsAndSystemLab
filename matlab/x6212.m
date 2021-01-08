x1=-2:0.08:1;
y1=-1:0.08:1;
[x y]=meshgrid(x1,y1);
s=x+i*y;
FS=abs((s+2)./(s.*(s+1).^3));
mesh(x,y,FS);
surf(x,y,FS);
zlim([-5,500])
colormap(hsv);
