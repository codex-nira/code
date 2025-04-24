I=imread('./images/lowContrast.jpeg');

h=histogram(I);
J=modifiedContrast(I);
h2=histogram(J);

subplot(2,2,1);imshow(rgb2gray(I));hold on;
subplot(2,2,2);plot(h);
subplot(2,2,3);imshow(J);
subplot(2,2,4);plot(h2);