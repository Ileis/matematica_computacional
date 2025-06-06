function res = retro_substitution(M)
    %{
        M: matriz triangular superior aumentada.
        output: Vetor solucao.
    %}
    [lin, col] = size(M);
    X = ones(lin, 1);

    for i = lin:-1:1
        sum = 0;
        for j = i + 1:col-1
            sum += M(i,j) * X(j);
        endfor
        X(i, 1) = (M(i, col) - sum) / M(i, i);
    endfor

    res = X;
endfunction