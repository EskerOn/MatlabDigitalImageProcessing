function mat=arrayToMatrix(A)
    mat = [A(2:2:end)',A(1:2:end)'];
    mat = [mat ones(size(mat,1),1)];