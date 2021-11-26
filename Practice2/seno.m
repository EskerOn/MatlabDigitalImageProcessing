%funcion que recibe una matriz y retorma seno 
function senov = seno(img)
    nom=double(img)/255;
    lambda=pi/2;
    senov = sin(nom*lambda);
    senov=uint8(senov*255);
end