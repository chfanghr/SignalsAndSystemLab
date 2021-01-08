x1=-6:0.08:2;
y1=-2:0.08:2;
[x y]=meshgrid(x1,y1);
s=x+i*y;
FS=abs(((s+1).*(s+3))./(s.*(s+2).*(s+5)));
mesh(x,y,FS);
surf(x,y,FS);
zlim([0,10])
colormap(hsv);
