%funcion que recibe una matriz y realiza la umbralizacion
function imgumb = umbral(img, umb)
    figure;
    subplot(2,1,1);
    imshow(img);
    title('Imagen original');
    imgumb = img;
    imgumb(img>=umb)  = 255;
    imgumb(img<umb) = 0;
    % Mostrar 
    subplot(2,1,2);
    imshow(imgumb);
    title('Umbralizacion');
end