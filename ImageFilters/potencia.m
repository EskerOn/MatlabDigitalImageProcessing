%funcion que recibe una matriz y retorma potencia
function pot = potencia(img, gamma)
    nom=double(img)/255;
    pot = nom.^gamma;
    pot=uint8(pot*255);
end