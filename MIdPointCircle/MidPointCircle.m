

function MidPointCircle(r)
  x = 0
  y = r
  p = 1 - y

  point = zeros(20,2)

  i=1

  while (x<=y)
    points(i,:) = [x y]
    i++;
    points(i,:) = [x -y]
    i++;
    points(i,:) = [-x y]
    i++;
    points(i,:) = [-x -y]
    i++;
    points(i,:) = [y x]
    i++;
    points(i,:) = [y -x]
    i++;
    points(i,:) = [-y x]
    i++;
    points(i,:) = [-y -x]
    i++;
    if p<0
      p = p + 2*x +3;
    else
      p=p+2*(x-y)+5;
      y = y-1
    endif
    x++;
  endwhile

  
  Draw(points)
endfunction
