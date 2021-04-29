

function MidPointCircle(r)
  x = 0
  y = r
  p = 1 - y

  point = zeros(20,2)

  j=1

  while (x<=y)
    point(j,:) = [x,y]
    j++
    point(j,:) = [y,x]
    j++
    
    if p<0
      p = p + 2*x +3;
    else
      p=p+2*(x-y)+5;
      y = y-1
    endif
    x++;
  endwhile

  length = j-1
  tempPoints = zeros(length,2);

  i = j-1
  while i>0
    x = point(i,:)
    if x(1)!=x(2)
      tempPoints(i,:) = [x(2),x(1)]
    endif
    i--
  endwhile

  temp = [point(1:j-1,:);tempPoints(1:j-2,:)]
  points = [temp;[temp(1:length*2-1,1:1,:)*-1 temp(1:length*2-1,2:2,:)];[temp(1:length*2-1,1:1,:) temp(1:length*2-1,2:2,:)*-1];[temp(1:length*2-1,1:1,:)*-1 temp(1:length*2-1,2:2,:)*-1]]
  
  Draw(points)
endfunction
