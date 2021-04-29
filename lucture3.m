

r = 4
xc = 6
yc = 9

t = linspace(0,2*pi)

x = r*cos(t) + xc;
y = r*sin(t) + yc;

plot(x,y,xc,yc,'*');
