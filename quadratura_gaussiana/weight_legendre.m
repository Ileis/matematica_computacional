function res = weight_legendre(n, x_i)
    res = (2 * (1 - x_i.^2)) / ((n + 1) * polyval(poly_legendre(n + 1), x_i)).^2;
endfunction