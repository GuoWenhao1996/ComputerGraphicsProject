function MidBresenhamCircle(r)
% MidBresenhamCircle(r)   Bresenham�е��㷨��Բ
% r                          �뾶
x=0;y=r;d=1-r;
while(x<=y)
    CirclePoint(x,y);
    if(d<0)
        d=d+2*x+3;
    else
        d=d+2*(x-y)+5;
        y=y-1;
    end
    x=x+1;
end
grid on;
xlabel('x����');
ylabel('y����');
title('MidBresenhamCircle�㷨ģ�⻭Բ');
end