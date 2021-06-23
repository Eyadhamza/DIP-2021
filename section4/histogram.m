x = imread('pout.tif');

x_after = histeq(x);

figure(1),subplot(1,2,1),imshow(x),subplot(1,2,2),imhist(x);

figure(2),subplot(1,2,1),imshow(x_after),subplot(1,2,2),imhist(x_after );
