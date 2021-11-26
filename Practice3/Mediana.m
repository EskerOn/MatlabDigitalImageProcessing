function Res = Mediana(img)
    [row, col] = size(img);
    B1 = img(1,:);
    B2 = img(row,:);
    img=[B1; img; B2];
    B3 = img(:,1);
    B4 = img(:,col);
    img=[B3 img B4];
    imshow(img);
    for x = 2:1:row + 1
        for y = 2:1:col + 1
            region = [img(x-1,y-1) img(x-1,y) img(x-1,y+1) img(x,y-1) img(x,y) img(x,y+1) img(x+1,y-1) img(x+1,y) img(x+1,y+1)];
            SortedReg = sort(region);
            med = SortedReg(5);
            img(x,y) = med;
        end
    end
    Res=img;
    Res = Res(2:row,2:col);
end