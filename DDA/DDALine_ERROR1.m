% Function DDA(x1,x2,y1,y2)
x1=0;y1=0;
x2=6;y2=4;
length=abs(x2-x1);
if length<abs(y2-y1)
    length=abs(y2-y1);
end
dx=(x2-x1)/length;
dy=(y2-y1)/length;
x=x1;
y=y1;
hold on
    plot(round(x),round(y));
    x=x+dx;
    y=y+dy;
    plot(round(x),round(y));
hold off
grid on
