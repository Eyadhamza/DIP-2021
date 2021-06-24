% i keeeeeeeeeep geeeeeeeeeeeeeeting an errrrrrrrrrrrrrrrrrrrrrroooooooooooooor :(((((((((((((((((((((((((((((((

image = imread('cameraman.tif');

Q = entropy(image);

sym = [0:255];

[m,n] = size(image);

probabilities = imhist(image)/(m*n);

[dict,avg] = huffmandict(sym,probabilities);

img_as_vector = image(:);

compressed_image = huffmanenco(img_as_vector,dict);

original = huffmandeco(compressed_image,dict);

original_image = reshape(original,m,n);

imshow(uint8(original_image));

