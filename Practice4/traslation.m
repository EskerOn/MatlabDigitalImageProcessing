function Res = traslation(img1, x, y)
    if y > 0
        Res = [zeros(y, size(img1, 2)); img1(1:end-y, :)];
    else
        Res = img1(1-y:end, :);
        Res = [Res; zeros(y*-1, size(img1, 2))];
    end
    if x > 0
        Res = [Res(:, 1:x), zeros(size(img1, 1), x)];
    else
        Res = [img1(:, 1-x:end), Res(:, 1-x:end)];
        Res = [Res(:, x*-1:end), zeros(size(img1, 1), x*-1)];
    end
end