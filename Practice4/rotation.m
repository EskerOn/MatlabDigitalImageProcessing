function Res = rotation(img1, angle)
    [m, n] = size(img1);
    Res = zeros(m,n);
    for i = 1:m
        for j = 1:n
            x = (i - m / 2) * cosd(angle) - (j - n / 2) * sind(angle) + m / 2;
            y = (i - m / 2) * sind(angle) + (j - n / 2) * cosd(angle) + n / 2;
            if x > 0 && x <= m && y > 0 && y <= n
                Res(i, j) = img1(round(x), round(y));
            end
        end
    end
    Res = uint8(Res);
end
