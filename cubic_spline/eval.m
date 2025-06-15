function res = eval(X, Y, m)
    n = length(X);
    res = zeros(n - 1, 4);

    for i = 1 : n - 1
        C = model(X(i), X(i + 1));
        D = [Y(i) Y(i + 1) m 0]';

        res(i, :) = C \ D;
        # m = C(3, :) * res(i, :)';
        m = polyval(polyder(res(i, :)), X(i + 1));

    endfor
endfunction