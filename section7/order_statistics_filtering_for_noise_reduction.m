image = imread('cameraman.tif');

salted_noised_image = imnoise(image,'salt & pepper');

minimum_filtering = ordfilt2(salted_noised_image,1,ones(3,3)); % choose the first number of the ordered list (get the minimum)

maximum_filtering = ordfilt2(salted_noised_image,9,ones(3,3));% choose the last number of the ordered list (get the maximum)

median_filtering = ordfilt2(salted_noised_image,5,ones(3,3));% choose the median number of the ordered list (get the median)


subplot(231);imshow(image);title('original image');

subplot(232);imshow(salted_noised_image);title('Noisy image');

subplot(233);imshow(minimum_filtering);title('filtered using minimum filtering');

subplot(234);imshow(maximum_filtering);title('filtered using maximum filtering');


subplot(235);imshow(median_filtering);title('filtered using mdeian filter');

