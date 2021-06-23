image = imread('cameraman.tif');

speckle_noised_image = imnoise(image,'speckle');

h = fspecial('average');

average_filtered_img = imfilter(speckle_noised_image,h);

median_filtered_img = medfilt2(speckle_noised_image,[7 7]);

wiener_filtered_img = wiener2(speckle_noised_image,[7 7]);

subplot(231);imshow(image);title('orginal image');

subplot(232);imshow(speckle_noised_image);title('speckle image');

subplot(233);imshow(average_filtered_img);title('average filtered image');


subplot(234);imshow(median_filtered_img);title('median filtered image');

subplot(235);imshow(wiener_filtered_img);title('wiener filtered image');
