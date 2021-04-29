

function Bresenham_Line_Drawing(p1, p2)
  x = p1(1);
  y = p1(2);
  
  m = (p2(2) - p1(2))/ (p2(1)-p1(1))
  if(m<1)
    dx = p2(1) - p1(1);
    dy = p2(2) - p1(2);
    
    p = 2*dy - dx;
    points = zeros(max(p1(1),p2(1))+2,2);
    i = 1;
    for x=p1(1):p2(1)
      points(i,:) = [x,y]
      x++;
      if p<0
        p=p+2*dy;
      else
        p=p+2*dy-2*dx
        y++;
      endif
      i++;
    endfor
  else
    dx = p2(1) - p1(1);
    dy = p2(2) - p1(2);
    
    p = 2*dx - dy;
    %points = zeros(100,2);
    points = zeros(max(p1(2),p2(2))+2,2);
    i = 1;
    for y=p1(2):p2(2)
      points(i,:) = [x,y]
      y++;
      if p<0
        p=p+2*dx;
      else
        p=p+2*dx-2*dy
        x++;
      endif
      i++;
    endfor
  endif
  res = points(1:i, : )
  %Draw(res);
  %UpdateDraw(res);
  TestDraw(res);
  
    
endfunction
