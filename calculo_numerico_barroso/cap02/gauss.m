function res = gauss(M)
    %{
        M: matriz aumentada.
        output: M triangulada.
    %}

    [n, _] = size(M);

    for i = 1:n

        if M(i, i) == 0
            for j = i + 1 : n
                M(i, :) += M(j, :);
            endfor
        endif

        for j = i + 1 : n
            mult = M(j, i) / M(i, i);
            M(j, :) -= M(i, :) * mult;
        endfor
    endfor

    res = M;
endfunction