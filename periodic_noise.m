image = imread('cameraman.tif');

[M, N] = size(input_image);

[x,y] = meshgrid(1:M, 1:N);

noise_pattern = 1 + sin(x+y/1.5);

noised_image = (double(image)/128 + noise_pattern)/4;

subplot(121);imshow(image);title('orginal image');

subplot(122);imshow(noised_image);title('periodic noised image');