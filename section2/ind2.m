image = imread('monarch.png');

[indexed_image,map] = rgb2ind(image);

figure(1);

subplot(1,4,1); imshow(image);title('rgb image');


subplot(1,4,2); imshow(indexed_image,map);title('indexed image');

image_again = ind2rgb(indexed_image,map);

subplot(1,4,3); imshow(image_again);title('back to rgb image');



grayed_image = ind2gray(indexed_image,map);

subplot(1,4,4); imshow(grayed_image);title('grayscled image');

