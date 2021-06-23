image = imread('cameraman.tif');

image = im2double(image);

Fourior_transfrom = fft2(image);

Fourior_transfrom_shifted = fftshift(Fourior_transfrom);

Fourior_transfrom_shifted = abs(Fourior_transfrom_shifted);

inverseImage = ifft2(Fourior_transfrom);

inverseImage = real(inverseImage);

subplot(1,3,1); imshow(image); title('original image');

subplot(1,3,2); imshow(log(1 + Fourior_transfrom_shifted),[]); title('Fourior spectorm ');

subplot(1,3,3); imshow(inverseImage); title('reconstructed image');


