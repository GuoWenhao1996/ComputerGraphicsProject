function MidBresenhamEllipse(a,b,color)
% MidBresenhamEllipse(r)   Bresenham�е��㷨����Բ
% a                          ������
% b                          �̰���
% color                      ��ɫ
x=0;y=b;
d=b*b+a*a*(-b+0.25);
hold on;
plot(x,y,'.r');
plot(-x,-y,'.r');
plot(-x,y,'.r');
plot(x,-y,'.r');
while(b*b*(x+1)<a*a*(y-0.5))
    if(d<=0)
        d=d+b*b*(2*x+3);
        x=x+1;
    else
        d=d+b*b*(2*x+3)+a*a*(-2*y+2);
        x=x+1;
        y=y-1;
    end
    plot(x,y,color);
    plot(-x,-y,color);
    plot(-x,y,color);
    plot(x,-y,color);
end
d=b*b*(x+0.5)*(x+0.5)+a*a*(y-1)*(y-1)-a*a*b*b;
while(y>0)
    if(d<=0)
        d=d+b*b*(2*x+2)+a*a*(-2*y+3);
        x=x+1;
        y=y-1;
    else
        d=d+a*a*(-2*y+3);
        y=y-1;
    end
    plot(x,y,color);
    plot(-x,-y,color);
    plot(-x,y,color);
    plot(x,-y,color);
end
grid on;
xlabel('x����');
ylabel('y����');
title('Bresenham�е��㷨ģ����Բ');