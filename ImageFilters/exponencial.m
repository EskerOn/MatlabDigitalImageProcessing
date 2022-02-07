%funcion que recibe una matriz y retorma logaritmo
function expv = exponencial(img, alpha)
    nom=double(img)/255;
    A = 255/(exp(alpha)-1);
    expv = A*(exp(alpha*nom/255)-1);
    expv = uint8(expv*255);
end