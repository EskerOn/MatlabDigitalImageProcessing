%funcion que recibe una matriz y aplica funciones ptencia, trigonometricas, logaritmicas y exponenciales
function res = filtros(img, oper, arg)
    figure;
    subplot(2,1,1);
    imshow(img);
    title('Imagen original');
    switch oper
        case 'POT'
            res = potencia(img, arg);
        case 'LOG'
            res= logaritmo(img, arg);
        case 'SEN'
            res= seno(img);
        case 'EXP'
            res = exponencial(img, arg);
        case 'COS'
            res = coseno(img);
    end
    subplot(2,1,2);
    imshow(res);
    title('Resultado');
end