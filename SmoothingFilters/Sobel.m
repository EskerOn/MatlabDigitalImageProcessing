function Res = Sobel(img)
    Hx = [-1 0 1; -2 0 2; -1 0 1];
    Hy = [-1 -2 -1; 0 0 0; 1 2 1];
    Hx = conv2(img, Hx, 'same');
    Hy = conv2(img, Hy, 'same');
    H = sqrt(Hy.^2 + Hx.^2);
    H=H.*1/6;
    %Hmin = min(min(H)); 
    %dx = max(max(H)) - Hmin;
    %H = floor((H-Hmin)/dx*255);
    Res = uint8(H);
end