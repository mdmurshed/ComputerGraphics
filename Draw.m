

function retval = Draw (points)
  Xmax = max(points(:,1));
  Ymax = max(points(:,2));
  Xmin = min(points(:,1));
  Ymin = min(points(:,2));
  
  points(:,1) += abs(Xmin) + 1;
  points(:,2) += abs(Ymin) + 1;
  
  sz = max(Xmax,Ymax) + 15;
  cnvs = ones(sz)
  
  for i = 1:size(points,1)
    cnvs(points(i,1),points(i,2)) = 0;
  endfor
  imshow(cnvs);
endfunction
