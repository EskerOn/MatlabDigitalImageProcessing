function Res = traslation(img1, x, y)
    Res = img1;
    if y > 0
        Res = [zeros(y, size(Res, 2)); Res(1:end - y, :)];
    else
        Res = [Res(y * -1:end, :); zeros(y * -1, size(Res, 2))];
    end
    if x > 0
        Res = [zeros(size(Res, 1), x), Res(:, 1:end - x)];
    else
        Res = [Res(:, x * -1:end), zeros(size(Res, 1), x * -1)];
    end
end
