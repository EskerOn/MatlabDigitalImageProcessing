function Res = LaplaceFilter(img)
    H = [0 0 -1 0 0; 0 -1 -2 -1 0; -1 -2 16 -2 -1; 0 -1 -2 -1 0; 0 0 -1 0 0];
    Res = uint8(conv2(img, H, 'same'));
end