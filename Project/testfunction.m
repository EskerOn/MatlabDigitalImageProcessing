function R = testfunction(img)
    % Horizontal
    figure(1);
    subplot(1,2,1);
    imshow(img);
    %axis on;
    

    R = ComputeCCV(img);
    
    subplot(1,2,2);
    %grid on;
    imshow(R);
    %axis on;
    title('Resultado');
end