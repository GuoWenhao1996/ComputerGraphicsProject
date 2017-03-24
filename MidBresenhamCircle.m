function MidBresenhamCircle(r)
% MidBresenhamCircle(r)   Bresenham÷–µ„À„∑®ªÊ‘≤
% r                          ∞Îæ∂
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
end