%funcion rotación con operaciones matriciales
function R = rotacion(P,grados)
    I=eye(3); %matriz identidad
    angulo = (grados*pi)/180; %conversion de grados a radianes
    %matriz de rotacion
    I(1,1)=cos(angulo);
    I(1,2)=-sin(angulo);
    I(2,1)=sin(angulo);
    I(2,2)=cos(angulo);
    %rotacion 
    R = P*I;
end