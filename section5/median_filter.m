image = imread('cameraman.tif');

noised_image = imnoise(image,'salt & pepper');

median_filter = medfilt2(noised_image);


figure(1);


subplot(1,3,1); imshow(image); title('original image');

subplot(1,3,2); imshow(noised_image); title('noised image ');

subplot(1,3,3); imshow(median_filter); title('applied median filter ');

