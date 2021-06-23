image = imread('cameraman.tif');



max_filtered_image = ordfilt2(image,9,ones(3,3));


min_filtered_image = ordfilt2(image,1,ones(3,3));

figure(1);

subplot(1,3,1); imshow(image); title('original image')

subplot(1,3,2); imshow(max_filtered_image); title('applied max filter ')

subplot(1,3,3); imshow(min_filtered_image); title('applied min filter ')

