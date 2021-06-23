image = imread('cameraman.tif');


mask = fspecial('laplacian');

filtered_image = filter2(mask,image);

figure(1);

subplot(1,3,1); imshow(image); title('original image')

subplot(1,3,2); imshow(filtered_image/256); title(' lapacian filter ')

subplot(1,3,3); imshow(filtered_image + image); title('applied lapacian filter to the image')