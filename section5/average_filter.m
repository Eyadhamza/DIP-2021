image = imread('cameraman.tif');


h = fspecial('average');

filtered_image = filter2(h,image);

figure(1);

subplot(1,2,1); imshow(image); title('original image')

subplot(1,2,2); imshow(filtered_image/256); title('applied average filter ')

