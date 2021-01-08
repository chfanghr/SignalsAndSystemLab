x1=-4:0.08:0
y1=-2:0.08:2
[x,y]=meshgrid(x1,y1)
s=x+i*y
FS=abs(2./(s+1)+5./(s+3))
mesh(x,y,FS)
surf(x,y,FS)
zlim([-1 50])
colormap(hsv)