I=imread('Lenna.png');
invert=inverting(I);

subplot(1,2,1);imshow(rgb2gray(I));title('orinal image');hold on;
subplot(1,2,2);imshow(invert);title('invert image');