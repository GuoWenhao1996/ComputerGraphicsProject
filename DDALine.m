function DDALine(x1,y1,x2,y2,color)
% DDALine(x1,y1,x2,y2)   DDA算法绘直线
% x1                      第1个点的横坐标
% y1                      第1个点的纵坐标
% x2                      第2个点的横坐标
% y2                      第2个点的纵坐标
% color                   颜色
if(x1>x2)
    x=x1;   y=y1;
    x1=x2;  y1=y2;
    x2=x;   y2=y;
end
dx=x2-x1;
dy=y2-y1;
x=x1;
y=y1;
if(abs(dx)<abs(dy))
    max=dy;
else
    max=dx;
end
xIncrease=dx/abs(max);
yIncrease=dy/abs(max);
hold on;
for i=0:abs(max)
    plot(round(x),round(y),color);
    x=x+xIncrease;
    y=y+yIncrease;
end
hold off;
grid on;
xlabel('x轴线');
ylabel('y轴线');
title('DDA算法模拟直线');
end