function Res = Scale(img1, scaleFactor)
    [x,y] = size(img1);
    
    switch scaleFactor
        case 'ext'
            %Ampliacion /Extension
            Res = zeros(x*2,y*2);
            Res(1:2:end,1:2:end) = img1; %impares filas impares
            Res(2:2:end,2:2:end) = img1; %pares filas pares
            Res(1:2:end,2:2:end) = img1; %pares filas impares
            Res(2:2:end,1:2:end) = img1; %impares filas pares
            disp(size(Res));
        case 'red'
            %reduccion
            Res = img1(1:2:end, 1:2:end); %impares filas impares
    end     
    Res=uint8(Res); 
end
