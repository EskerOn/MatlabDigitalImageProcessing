function Res = Prewitt(img)
    Hx = [-1 0 1; -1 0 1; -1 0 1];
    Hy = [-1 -1 -1; 0 0 0; 1 1 1];
    Hx = conv2(img, Hx, 'same');
    Hy = conv2(img, Hy, 'same');
    H = sqrt(Hy.^2 + Hx.^2);
    H=H.*1/6;
    Res = uint8(H);
end