clc
%fileLocation = "F:/Octave/Testing/rgb-cmyk.jpg"
[fn fp i] = uigetfile();
fileLocation = strcat(fp,fn);
im = imread(fileLocation);
%imshow(im);

lr = im(:,:,1);
lb = im(:,:,2);
lg = im(:,:,3);

imshow(lb);
%imshow(lb);
%imshow(lg);