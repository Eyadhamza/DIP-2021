image = imread('cameraman.tif');

salted_noised_image = imnoise(image,'salt & pepper');

average_filter = fspecial('average',[5 5]);

average_filterd_img = filter2(average_filter,salted_noised_image);

median_filtered_img = medfilt2(salted_noised_image,[5 5]);

figure(1);

subplot(221);imshow(image);title('original image');

subplot(222);imshow(salted_noised_image);title('Noisy image');

subplot(223);imshow(uint8(average_filterd_img));title('filtered using average filter');

subplot(224);imshow(median_filtered_img);title('filtered using mdeian filter');
