% DDA line draw
%p1 = [2,0]
%p2 = [7,4]

%DDA_line_convert(p1,p2)

function DirectLineEquation (p1, p2)
    y2 = p2(2)
    y1 = p1(2)
    x2 = p2(1)
    x1 = p1(1)
    m = (p2(2)-p1(2)) / (p2(1)-p1(1))
    b = y1 - x1*m
    points = zeros(100,2)
    x = x1;y = y1;
    i = 1
    points(i,:) = [x y]
    
    if m>1
      for i=2:x2
        y = y+1;
        x = (y - b)/m;
        points(i,:) = [round(x),round(y)];
      endfor
    else 
      for i=2:x2
        x = x+1;
        y = m*x + b;
        points(i,:) = [round(x),round(y)];
      endfor
    endif
    
    points(i,:) = [x2,y2];
    res = points(1:i, : )
    Draw(res);

endfunction
