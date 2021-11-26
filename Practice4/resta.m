function Res = resta(img1, img2)
    img1 = double(img1);
    img2 = double(img2);
    Res=round(abs(img1-img2));
    Res = uint8(Res);
end