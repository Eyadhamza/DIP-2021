g = imread('mountain.png');

[r c] = size(g);
recim = zeros(r,c);
for i =1:8 
   b = bitget(g,i);
   figure(1),subplot(2,4,i),imshow(b),title(strcat('bitplane',num2str(i)));
   recim = bitset(recim,i,b);
   if(i == 5 | i == 6)
        recim = bitset(recim,i,b);
   end
end
figure(2),imshow(uint8(recim));