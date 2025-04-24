function I=LinearFilter(I,f)

    if length(size(I))==3
        I=rgb2gray(I);
    end
    [x,y]=size(f);
    [M,N]=size(I);

    x=(x-1)/2;
    y=(y-1)/2;

    J=I;
    for i=x+1:M-x
        for j=y+1:N-y
            s=0;
            for u=-x:x
                for v=-y:y
                    t=J(i+u,j+v)*f(x+u+1,y+v+1);
                    s=s+uint32(t);
                end
            end
            I(i,j)=s/(x*y);
        end
    end
end
