function MidBresenhamLine(x1,y1,x2,y2)
% MidBresenhamLine(x1,y1,x2,y2)   Bresenham中点算法绘直线
% x1                                第1个点的横坐标
% y1                                第1个点的纵坐标
% x2                                第2个点的横坐标
% y2                                第2个点的纵坐标
if(x1>x2)
    x=x1;   y=y1;
    x1=x2;  y1=y2;
    x2=x;   y2=y;
end
dx=x2-x1;
dy=y2-y1;
k=dy/dx;
if(k>0)
    if(k>1)
        d=dy-2*dx;
        upIncrease=2*dy-2*dx;
        downIncrease=-2*dx;
        x=x1;y=y1;
        hold on;
        while(y<=y2)
            plot(round(x),round(y),'.r');
            y=y+1;
            if(d<0)
                x=x+1;
                d=d+upIncrease;
            else
                d=d+downIncrease;
            end
        end
    else
        d=dx-2*dy;
        upIncrease=2*dx-2*dy;
        downIncrease=-2*dy;
        x=x1;y=y1;
        hold on;
        while(x<=x2)
            plot(round(x),round(y),'.r');
            x=x+1;
            if(d<0)
                y=y+1;
                d=d+upIncrease;
            else
                d=d+downIncrease;
            end
        end
    end
else
    if(k>-1)
        dy=-dy;
        d=dx-2*dy;
        upIncrease=2*dx-2*dy;
        downIncrease=-2*dy;
        x=x1;y=y1;
        hold on;
        while(x<=x2)
            plot(round(x),round(y),'.r');
            x=x+1;
            if(d<0)
                y=y-1;
                d=d+upIncrease;
            else
                d=d+downIncrease;
            end
        end
    else
        dy=-dy;
        d=dy-2*dx;
        upIncrease=2*dy-2*dx;
        downIncrease=-2*dx;
        x=x1;y=y1;
        hold on;
        while(y>=y2)
            plot(round(x),round(y),'.r');
            y=y-1;
            if(d<0)
                x=x+1;
                d=d+upIncrease;
            else
                d=d+downIncrease;
            end
        end
    end
end
grid on;
xlabel('x轴线');
ylabel('y轴线');
title('MidBresenham算法模拟直线');
end