function CirclePoint(x,y,color)
% CirclePoint(x,y)   八点法算法绘圆
% x                    横坐标
% y                    纵坐标
% color                颜色
hold on
plot(x,y,color);
plot(y,x,color);
plot(-x,y,color);
plot(y,-x,color);
plot(x,-y,color);
plot(-y,x,color);
plot(-x,-y,color);
plot(-y,-x,color);
hold off
grid on;
xlabel('x轴线');
ylabel('y轴线');
title('八点算法模拟画圆');
end