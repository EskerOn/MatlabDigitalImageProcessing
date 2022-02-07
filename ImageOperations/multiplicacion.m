function Res = multiplicacion(img1, img2)
    img1 = double(img1)/255;
    img2 = double(img2)/255;
    Res=img1.*img2;
    Res = uint8(round(Res*255));
end