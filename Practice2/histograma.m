%funcion que recibe una matriz y calcula el histograma
function h = histograma(img)
    figure;
    subplot(2,1,1);
    imshow(img);
    [r,c]=size(img);
    frec= 1 : 256;
    for i=1:r
        for j=1:c
            val = img(i, j);
            frec(val+ 1) = frec(val+1) + 1;
        end
    end
    n = 0 : 255;  
    % Mostrar el histograma
    subplot(2,1,2);
    stem(n, frec);
    grid on;
    xlabel('Intensidad');
    ylabel('Frecuencia');
    title('Histograma de Imagen');
end