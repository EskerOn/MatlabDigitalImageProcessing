%funcion traslación con operaciones matriciales
function R = traslacion(P,tx,ty)
    I=eye(3); 
    I(1,3)=tx; 
    I(2,3)=ty; 

    R1 = P*I;
   
    
    R = R1;
end