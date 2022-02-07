function Res = BoxFilter(img)
    H = [0 0 0 0 0; 0 1 1 1 0; 0 1 1 1 0; 0 1 1 1 0; 0 0 0 0 0];
    H=H.*1/9;
    Res = uint8(conv2(img, H, 'same'));
end