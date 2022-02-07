%funcion que recibe una matriz y retorna coseno
function vcos = coseno(img)
    nom=double(img)/255;
    vcos = (1-cos((pi.*nom)/(2)));
    vcos=uint8(vcos*255);
end