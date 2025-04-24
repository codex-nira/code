function T=brightness(I,c)
    if  length(size(I))==3
        I=rgb2gray(I);
    end

    T=I;
    [row,col]=size(I);
    for x=1:row
        for y=1:col
            a=I(x,y)+c;

            if a<0
                a=0;
            end
            if a>255
                a=255;
            end

            T(x,y)=a;
        end
    end
end
