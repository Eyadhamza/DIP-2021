image = imread('cameraman.tif');

t100 = zeros(256,256,100); # define 100 matrices of 265*265, all zero values

for i=1:100
  # loop over the matrix and add gaussian noise to each matrix
  t100(:,:,i) = imnoise(image,'gaussian');
endfor

# get the average of the images 

tmean = mean(t100,3); # the second arg defines how the mean is calculated, 3 means the length, the widthm, and the depth

noised_image = imnoise(image, 'gaussian',0,.005);

wiener_filtered_image = wiener2(noised_image,[7 7]);

subplot(141); imshow(image);title('original image');

subplot(142); imshow(uint8(t100(:,:,1)));title('noisy');

subplot(143); imshow(uint8(tmean));title('average filtered image');

subplot(144); imshow(uint8(wiener_filtered_image));title('wiener filtered image');

