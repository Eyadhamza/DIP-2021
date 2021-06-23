image = imread('cameraman.tif');

salted_noised_image = imnoise(image,'salt & pepper');

gaussian_noised_image = imnoise(image,'gaussian');

speckle_noised_image = imnoise(image,'speckle');

figure(1);

subplot(221);imshow(image);title('orginal image');

subplot(222);imshow(salted_noised_image);title('salt & pepper image');

subplot(223);imshow(gaussian_noised_image);title('gaussian image');


subplot(224);imshow(speckle_noised_image);title('speckle image');

