x1=input('�������1����ĺ�����:');
y1=input('�������1�����������:');
x2=input('�������2����ĺ�����:');
y2=input('�������2�����������:');
dx=x2-x1;
dy=y2-y1;
x=x1;
y=y1;
if(abs(dx)<abs(dy))
    max=dy;
else
    max=dx;
end
xIncrease=dx/max;
yIncrease=dy/max;
hold on;
for i=0:max    
plot(round(x),round(y),'*');
x=x+xIncrease;
y=y+yIncrease;
end
grid on;
xlabel('x����');
ylabel('y����');
title('DDA�㷨ģ��ֱ��');