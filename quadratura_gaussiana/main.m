a = 0;
b = 4;
n = 5;

YY = [];
XX = [];

s = integral(@generic_trigonom, a, b);
for i=0:n
    XX = [XX i];
    YY = [YY quadrature_gauss_legendre(@generic_trigonom, a, b, i)];
endfor


plot(XX, YY, 'r');
hold on;
plot([XX(1), XX(end)], [s, s], 'b');
hold off;
pause();