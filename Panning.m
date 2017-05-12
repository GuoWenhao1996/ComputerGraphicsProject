function Panning(x1,y1,x2,y2,x,y)
    DDALine(x1,y1,x2,y2,'.w');
    DDALine(x1+x,y1+y,x2+x,y2+y,'.r');
end