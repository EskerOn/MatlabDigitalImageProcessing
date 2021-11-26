%funcion main para llamar a las demás funciones
function R = mainfun(P, op, x, y)
    %P es la matriz de puntos
    P=arrayToMatrix(P);
    %Graficar puntos de entrada
    figure(1);
    subplot(2,1,1);
    plot(P(:,1),P(:,2));
    grid on;
    axiscenter();
    %op es la opcion de la funcion a utilizar
    switch op
    case 'R'
        R = rotacion(P,x);
    case 'T'
        R = traslacion(P,x,y)
    case 'E'
        R = escala(P,x,y);
    case 'I'
        R = inclinacion(P,x,y);
    end
    %Graficar puntos de salida
    subplot(2,1,2);
    plot(R(:,1),R(:,2));
    grid on;
    axiscenter();
end