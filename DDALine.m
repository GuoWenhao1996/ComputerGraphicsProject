function DDALine(x1,y1,x2,y2,color)
% DDALine(x1,y1,x2,y2)   DDA�㷨��ֱ��
% x1                      ��1����ĺ�����
% y1                      ��1�����������
% x2                      ��2����ĺ�����
% y2                      ��2�����������
% color                   ��ɫ
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
xlabel('x����');
ylabel('y����');
title('DDA�㷨ģ��ֱ��');
end