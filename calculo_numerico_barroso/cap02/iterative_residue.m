function res = iterative_residue(M, b)
    [lin, col] = size(M);
    X = ones(lin, 1);
    r = ones(lin, 1);
    s = ones(lin, 1);
    E = 0.0000000001;

    while max(r) > E
        r = b - (M * X)
        s = retro_substitution(gauss([M, r]));
        X = X + s;
    endwhile

    res = X;
endfunction