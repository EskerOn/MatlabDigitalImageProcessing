%funcion inclinacion con operaciones matriciales
function R = inclinacion(P,ix,iy)
    I=eye(3); %matriz identidad
    anguloix = (ix*pi)/180; %angulo de inclinacion en x
    anguloiy = (iy*pi)/180; %angulo de inclinacion en y
    I(1,2) = tan(anguloix); %matriz de rotacion en x
    I(2,1) = tan(anguloiy); %matriz de rotacion en y
    %Inclinacion
    R = P*I;
end
