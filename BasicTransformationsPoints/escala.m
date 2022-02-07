%funcion escala con operaciones matriciales
function R = escala(P, Sx, Sy)
    I=eye(3); %matriz identidad
    I(1,1)=Sx; %matriz de escala
    I(2,2)=Sy; %matriz de escala
    %escala
    R = P*I;
end