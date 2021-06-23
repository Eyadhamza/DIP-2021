
image = imread('peppers.png');

grayed_image = rgb2gray(image);

binary_image = im2bw(image);


[indexed_image,map] = rgb2ind(image);


subplot(2,2,1),imshow(image);
subplot(2,2,2),imshow(grayed_image);
subplot(2,2,3),imshow(binary_image);
subplot(2,2,4),imshow(indexed_image,map);
