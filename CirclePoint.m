function CirclePoint(x,y,color)
% CirclePoint(x,y)   �˵㷨�㷨��Բ
% x                    ������
% y                    ������
% color                ��ɫ
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
xlabel('x����');
ylabel('y����');
title('�˵��㷨ģ�⻭Բ');
end