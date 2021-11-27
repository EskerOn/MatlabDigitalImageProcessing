function Res = rotation(img1, angle)
    [x,y] = size(img1);
    switch mod (angle, 360)
        case 0
            Res = img1;
        case 90
            Res = img1';
        case 180
            Res = img1(end:-1:1, end:-1:1);
        case 270
            inverted = img1(end:-1:1, end:-1:1);
            Res = inverted';
        otherwise
            rotationMatrix = [cosd(angle) -sind(angle); sind(angle) cosd(angle)];
            %centro
            centerX = ceil(x/2);
            centerY = ceil(y/2);
            % Esquinas
            corners = [1 1; 1 y; x 1; x y];
            auxMat = [centerX centerY; centerX centerY; centerX centerY; centerX centerY];
            % rotar esquinas
            corners=corners-auxMat;
            corners=floor((rotationMatrix*corners')');
            corners=corners+auxMat;
            % minimo y maximo escquinas
            minX = min(corners(:,1));
            maxX = max(corners(:,1));
            minY = min(corners(:,2));
            maxY = max(corners(:,2));
            % nuevo tamaño
            newX = maxX - minX + 1;
            newY = maxY - minY + 1;
            newCenterX = floor(newX/2);
            newCenterY = floor(newY/2);
            %rotacion
            Res = zeros(newX, newY);
            for i = 1:newX
                for j = 1:newY
                    point = [i-newCenterX; j-newCenterY];
                    newPoint = rotationMatrix*point;
                    newPoint = newPoint + [centerX; centerY];
                    newPoint = floor(newPoint);
                    if newPoint(1) > 0 && newPoint(1) <= x && newPoint(2) > 0 && newPoint(2) <= y
                        Res(i,j) = img1(floor(newPoint(1)), floor(newPoint(2)));
                    end
                end
            end
            Res=uint8(Res);
     end      
end
