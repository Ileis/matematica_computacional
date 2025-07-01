function res = simpson3_8_range(x_1, x_n, N, f)
    Y = [];

    for i = 1:length(N)
        XX = linspace(x_1, x_n, N(i));
        YY = [];
        
        for j = 1: length(XX)
            YY = [YY, f(XX(j))];
        endfor

        Y = [Y, simpson3_8(YY, (x_n - x_1) / N(i))];
    endfor

    res = Y;
endfunction