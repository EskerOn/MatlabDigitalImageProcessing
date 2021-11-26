function R = calculadora(img1, img2, op)

    figure(1);
    subplot(2,2,1);
    imshow(img1);
    subplot(2,2,2);
    imshow(img2);

    [row1, col1] = size(img1);
    [row2, col2] = size(img2);
    row=min(row1,row2);
    col=min(col1,col2);
    img1 = img1(1:row,1:col);
    img2 = img2(1:row,1:col);
    switch op
    case 'sum'
        R = suma(img1, img2);
    case 'res'
        R = resta(img1, img2);
    case 'mul'
        R = multiplicacion(img1, img2);
    case 'div'
        R = division(img1, img2);
    case 'and'
        R = andf(img1, img2);
    case 'or'
        R = orf(img1, img2);
    case 'xor'
        R = xorf(img1, img2);
    case 'nand'
        R = nandf(img1, img2);
    case 'min'
        R = minf(img1, img2);
    case 'max'
        R = maxf(img1, img2);
    end

    subplot(2,2,3);
    imshow(R);
    title('Resultado');
end