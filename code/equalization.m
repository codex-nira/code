function I=equalization(I)
    
    if length(size(I))==3
        I=rgb2gray(I);
    end
    h=histogram(I);
    H=cumulativeHist(h);

    k=256;
    [M,N]=size(I);

    for i=1:M
        for j=1:N
            a=I(i,j);
            I(i,j)=floor(H(a)*(k-1)/(M*N));
        end
    end
end
