function R = transform(img1, op, x, y)

    % Horizontal
    figure(1);
    
    subplot(1,2,1);
    imshow(img1);
    axis on;
    switch op
    case 'tras'
        R = traslation(img1, x, y);
    case 'rot'
        R = rotation(img1, x);
    case 'sca'
        R = Scale(img1, x);
        
    end

    subplot(1,2,2);
    grid on;
    imshow(R);
    axis on;
    title('Resultado');
end