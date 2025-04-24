I = imread("./images/IBG.jpeg");
J = imread("./images/IFG.jpeg");

K  = alphablend(I,J,0.005);

imshow(K);