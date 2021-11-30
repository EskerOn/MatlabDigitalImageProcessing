function R = dilatacion(img)
    %image dilation with 3x3 structuring element 
    [row, col] = size(img);
    StructuringElement = [1, 1, 1; 1, 2, 1; 1, 1, 1];
    structuringElement = double(StructuringElement);
    img = double(img);
    R = zeros(row, col);
    for i = 2:row-1
        for j = 2:col-1
            region = [img(i-1,j-1), img(i-1,j), img(i-1,j+1); img(i,j-1), img(i,j), img(i,j+1); img(i+1,j-1), img(i+1,j), img(i+1,j+1)];
            %img +structuring element
            ImH = region + StructuringElement;
            R(i,j) = max(max(ImH));
        end
    end
    R = uint8(R);
end