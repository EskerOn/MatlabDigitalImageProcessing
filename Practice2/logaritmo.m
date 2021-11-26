%funcion que recibe una matriz y retorma logaritmo
function loga = logaritmo(img, alpha)
    nom=double(img)/255;
    c=10/log(256);
    loga = c*log(alpha * nom + 1);
    loga=uint8(loga*255);
end