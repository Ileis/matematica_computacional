function res = cubic(X, Y, A, x, m)
    res = 0;

    for i = 1: length(X) - 1
        if x >= X(i)
            res = [x^3 x^2 x 1] * A(i, :)';
            # res = polyval(A(i, :), x);
        endif
    endfor
endfunction

