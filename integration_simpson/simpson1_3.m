function res = simpson1_3(Y, h)
    res = 0;

    for i = 1:2:length(Y) - 2
        sum_y = Y(i) + 4*Y(i + 1) + Y(i + 2);
        res += (h * sum_y) / 3;
    endfor
endfunction