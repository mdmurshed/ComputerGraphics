
function retval = Circle (r)
  points =zeros(100,2)
  i = 1;
  x = 0
  y = r;
  d = 3 - 2*r
  while x<=y
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
    if d<0
      d = d  + 4*x+6;
    else 
      d = d+4*(x-y) + 10
      y=y-1;
    endif
    x++
  endwhile
  res = points(1:i,:);
  Draw(res)
  
endfunction
