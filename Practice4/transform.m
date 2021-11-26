function R = transform(img1, op, x, y)

    % Horizontal
    figure(1);
    subplot(1,2,1);
    imshow(img1);

    switch op
    case 'tras'
        R = traslation(img1, x, y);
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
    
    %subplot(1,2,2);
    %figure(1);
    %imshow(R);
    %title('Resultado');
    subplot(1,2,2);
    imshow(R);
    title('Resultado');
end