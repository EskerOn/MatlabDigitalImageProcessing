function Res = xorf(img1, img2)
    [row, col] = size(img1);
    img1 = uint8(de2bi(img1,8));
    disp(img1)
    img2 = uint8(de2bi(img2,8));
    Res = bi2de(bitxor(img1, img2));
    
    Res=reshape(Res, row, col);
    Res = uint8(Res);
end