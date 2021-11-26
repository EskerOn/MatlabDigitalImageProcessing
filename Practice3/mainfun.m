function R = mainfun(img, op)
    figure(1);
    subplot(1,2,1);
    switch op
    case 'box'
        img=imnoise(img,'salt & pepper',.03);
        imshow(img);
        title('Imagen original');
        R = BoxFilter(img);
    case 'lap'
        imshow(img);
        title('Imagen original');
        R = LaplaceFilter(img);
    case 'gau'
        img=imnoise(img,'salt & pepper',.03);
        imshow(img);
        title('Imagen original');
        R = GaussianFilter(img);
    case 'med'
        img=imnoise(img,'salt & pepper',.03);
        imshow(img);
        title('Imagen original');
        R = Mediana(img);
    case 'pre'
        imshow(img);
        title('Imagen original');
        R = Prewitt(img);
    case 'sob'
        imshow(img);
        title('Imagen original');
        R = Sobel(img);
    end
    subplot(1,2,2);
    imshow(R);
    title('Resultado');
end