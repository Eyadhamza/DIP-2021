image = imread('cameraman.tif');

[M, N] = size(input_image);

[x,y] = meshgrid(1:M, 1:N);


noise_pattern = 1 + sin(x+y/1.5); % we generate some noise pattern  

noised_image = (double(image)/128 + noise_pattern)/4; % we add the generated noise pattern to the image


fourior_transformed_image = fftshift(fft2(image)); % transform the image to frequency domain

fourior_transformed_noise_pattern = fftshift(fft2(noised_image)); % transform the noised image to frequency domain


figure(1);
subplot(221);imshow(image);title('orginal image');

subplot(222);imshow(noised_image);title('noise pattern');

subplot(223);imshow(log(1 + abs(fourior_transformed_image)),[]);title('fourior transformed image'); % log ensures that the values are in the range

subplot(224);imshow(log(1 + abs(fourior_transformed_noise_pattern)),[]);title('fourior transformed pattern');
  


% after we noticed the white lines in the image, we can conclude that this is a noise, we get it's cordinate and eliminate it by replacing it's values by zeros

fourior_transformed_noise_pattern(102,:) = 0;
fourior_transformed_noise_pattern(156,:) = 0;
fourior_transformed_noise_pattern(:,170) = 0;
fourior_transformed_noise_pattern(:,88) = 0;

enhanced_image = ifft2(fourior_transformed_noise_pattern);

figure(2);

subplot(121);imshow(log(1 + abs(fourior_transformed_image)),[]);title('fourior transformed image'); % log ensures that the values are in the range

subplot(122);imshow(log(1 + abs(enhanced_image)),[]);title('fourior transformed pattern');
  
