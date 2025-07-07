function res = quadrature_gauss_legendre(f, a, b, n)
    XX = roots(poly_legendre(n));
    res = 0;

    for i=1:length(XX)
        x = ((b - a) / 2) * XX(i) + (a + b) / 2;
        res += f(x) * weight_legendre(n, XX(i));
    endfor

    res = res * (b - a) / 2;
endfunction