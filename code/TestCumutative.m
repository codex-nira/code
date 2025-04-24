I=imread('Lenna.png');
h=histogram(I);
H=cumulativeHist(h);

subplot(1,2,1);bar(h);title('Histogram');hold on;
subplot(1,2,2);plot(H);title('Cumutative Histograme');