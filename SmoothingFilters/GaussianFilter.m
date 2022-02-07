function Res = GaussianFilter(img)
    H = [0 1 2 1 0; 1 3 5 3 1; 2 5 9 5 2; 1 3 5 3 1; 0 1 2 1 0];
    H=H.*1/64;
    Res = uint8(conv2(img, H, 'same'));
end