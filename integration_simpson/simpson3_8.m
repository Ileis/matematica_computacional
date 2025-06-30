function res = simpson3_8(Y, h)
    res = 0;

    for i = 1:3:length(Y) - 3
        sum_y = Y(i) + 3*Y(i + 1) + 3*Y(i + 2) + Y(i + 3);
        res += (3*h * sum_y) / 8;
    endfor
endfunction