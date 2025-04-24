I=imread('Lenna.png');
T=brightness(I,50);
subplot(1,2,1);imshow(rgb2gray(I));title('original image');
subplot(1,2,2);imshow(T);title('brightness image');