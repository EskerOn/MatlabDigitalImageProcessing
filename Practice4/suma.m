function Res = suma(img1, img2)
    img1 = double(img1)/2;
    img2 = double(img2)/2;
    Res=round(img1+img2);
    Res = uint8(Res);
end