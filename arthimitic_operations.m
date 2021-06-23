image = imread('goldhill.png');


added_image = imadd(image,128);

subtracted_image = imsubtract(image,128);

devided_image = immultiply(image,.5);

## or  devided_image = imdivide(image,2);


multiplied_image = immultiply(image, 2);

add_a_devided_image = imadd(imdivide(image,2),128);

image_complement = 255 - image;

figure(1)

imshow(image); title('original image');

figure(2)

subplot(2,3,1); imshow(added_image); title('y = x + 128');

subplot(2,3,2); imshow(subtracted_image); title('y = x - 128');

subplot(2,3,3); imshow(devided_image); title('y = x/2');

subplot(2,3,4); imshow(multiplied_image); title('y = x * 2');

subplot(2,3,5); imshow(add_a_devided_image); title('y = x/2 + 128');

subplot(2,3,6); imshow(image_complement); title('y = 255 - x ');