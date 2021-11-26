%funcion que recibe una matriz y calcula su negativo
function imgneg = negativo(img)
    figure;
    subplot(2,1,1);
    imshow(img);
    title('Imagen original');
    imgneg = 255 - 1 - img;
    subplot(2,1,2);
    imshow(imgneg);
    title('Imagen negativa');
end