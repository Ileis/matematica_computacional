function res = poly_legendre(n)
    if n == 0
        res = [1];
        return;
    elseif n == 1
        res = [1 0];
        return;
    endif

    c_2 = zeros(1, n + 1);
    c_2(end) = 1;

    c_1 = zeros(1, n + 1);
    c_1(end - 1) = 1;

    for i=1:n-1
        t_1 = (2*i + 1) / (i + 1) * conv([1 0], c_1(end - i:end));
        t_2 = -i / (i + 1) * [0 0 c_2(end - i + 1:end)];
        c = t_1 + t_2;
        c_2 = c_1;
        c_1 = [zeros(1, n - (i + 1)) c];
    endfor
    res = c_1;
endfunction