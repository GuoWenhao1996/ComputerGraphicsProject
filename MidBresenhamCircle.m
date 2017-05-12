function MidBresenhamCircle(r,color)
% MidBresenhamCircle(r)   Bresenham中点算法绘圆
% r                         半径
% color                     颜色
x=0;y=r;d=1-r;
hold on;
while(x<=y)
    CirclePoint(x,y,color);
    if(d<0)
        d=d+2*x+3;
    else
        d=d+2*(x-y)+5;
        y=y-1;
    end
    x=x+1;
end
grid on;
xlabel('x轴线');
ylabel('y轴线');
title('MidBresenhamCircle算法模拟画圆');
hold off;
end