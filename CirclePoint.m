function CirclePoint(x,y)
% CirclePoint(x,y)   八分法算法绘圆
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
end