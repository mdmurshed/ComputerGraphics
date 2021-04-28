r = 10
x = 0
y = r
p = 1 - y
xc = 0
yc = 0

points = zeros(20,2)

i = 0
j=1

while (x<=y)
  points(j,:) = [x,y]
  j++
  if p<0
    p = p + 2*x +3;
  else
    p=p+2*(x-y)+5;
    y = y-1
  endif
  x++;
endwhile

Testing = j-1
temp = zeros(Testing,2);

i = j-1
while i>0
  x = points(i,:)
  if x(1)!=x(2)
    temp(i,:) = [x(2),x(1)]
  endif
  i--
endwhile


arr1 = [points(1:j-1,:);temp(1:j-2,:)]

arr2 = arr1;
arr2(1:Testing*2-1,1:1,:)*=-1
arr3 = arr1
arr3(1:Testing*2-1,2:2,:)*=-1
arr4 = arr1
arr4(1:Testing*2-1,1:2,:)*=-1
point = [arr1;arr2;arr3;arr4]
Draw(point)
