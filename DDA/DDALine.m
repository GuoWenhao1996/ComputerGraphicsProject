x1=input('请输入第1个点的横坐标:');
y1=input('请输入第1个点的纵坐标:');
x2=input('请输入第2个点的横坐标:');
y2=input('请输入第2个点的纵坐标:');
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
xlabel('x轴线');
ylabel('y轴线');
title('DDA算法模拟直线');