function CirclePoint(x,y)
% CirclePoint(x,y)   �˵㷨�㷨��Բ
% x                    ������
% y                    ������
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
xlabel('x����');
ylabel('y����');
title('�˵��㷨ģ�⻭Բ');
end