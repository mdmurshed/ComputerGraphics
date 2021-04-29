

function retval = TestDraw (points)
  Xmax = max(points(:,1));
  Ymax = max(points(:,2));
  
  Xmin = min(points(:,1));
  Ymin = min(points(:,2));
  
  points(:,1) += abs(Xmin) + 1;
  points(:,2) += abs(Ymin) + 1;
  im = zeros(30,30)
  
  
  
  i = 1
  while i<=length(points)
    x = points(i,:)
    im(x(1),x(2)) = 255;
    i++
  endwhile
  %imagesc(im);
  %imshow(im);
  points
  image(im)
  axis("xy")
endfunction
