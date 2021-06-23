image = imread('girl.png');

resized_image = imresize(image,.1);


figure(1);

imshow(image); title('original image');

figure(2);

imshow(resized_image); title('resized image');
