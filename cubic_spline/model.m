function res = model(x, xx)
    res = [
        x^3   x^2  x  1;
        xx^3  xx^2 xx 1;
        3*x^2 2*x  1  0;
        6*x   2    0  0;
        # 6*xx  2    0  0;
        ];
endfunction