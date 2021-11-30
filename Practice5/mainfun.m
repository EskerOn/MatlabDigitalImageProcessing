function R = mainfun(img, op)
    % Horizontal
    figure(1);
    subplot(1,2,1);
    imshow(img);
    axis on;
    
    switch op
    case 'ero'
        R = erosion(img);
    case 'dil'
        R = dilatacion(img);
    case 'ape'
        R = dilatacion(erosion(img));
    case 'cie'
        R = erosion(dilatacion(img));
    end

    subplot(1,2,2);
    grid on;
    imshow(R);
    axis on;
    title('Resultado');
end