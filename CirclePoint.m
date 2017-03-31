function CirclePoint(x,y)
% CirclePoint(x,y)   八点法算法绘圆
% x                    横坐标
% y                    纵坐标
hold on
plot(x,y,'.r');
plot(y,x,'.r');
plot(-x,y,'.r');
plot(y,-x,'.r');
plot(x,-y,'.r');
plot(-y,x,'.r');
plot(-x,-y,'.r');
plot(-y,-x,'.r');
grid on;
xlabel('x轴线');
ylabel('y轴线');
title('八点算法模拟画圆');
end