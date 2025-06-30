# METODOS DE INTEGRAÇÃO: Simpson 1/3 e Simpson 3/8

# Função Exponencial: Conseguimos ver que para a integração
# da função exponencial, o Simpson 1/3 converge mais rápido que
# o Simpson 3/8. Ambos se comportam de maneira muito semelhante

# Função Polinomial: Para a integração da função polinomial, a integração Simpson 3/8
# consegue chegar primeiro no valor exato, mas logo depois ele supera consideravelmente
# o valor exato, a partir desse ponto temos que o Simpson 1/3 fica mais próximo do
# valor exato.

# Função Trigonométrica: No caso da função trigonométrica, ambos os métodos apresentavam
# comportamento caótico para valores baixos de partições. Simpson 1/3 apresentou valores
# mais discrepantes que Simpson 3/8 no inicio, mas logo depois se comportou e convergiu
# mais rápido que Simpson 3/8. Simpson 1/3 apresenta valores mais proximos do valor
# exato para uma grande quantidade de numeros de partições.

a = 1;
b = 50;
n = 6 * 150;

# os valores de intervalos para a integração simpson 1/3 precisam ser pares,
# enquanto os valores de intervalos para a integração simpson 3/8 precisam ser
# multiplos de 6
NN = [];
for i = 6:6:n
    NN = [NN, i];
endfor

expon_1_3_Y = simpson1_3_range(a, b, NN,  @generic_expon);
expon_3_8_Y = simpson3_8_range(a, b, NN, @generic_expon);
expon_s = integral(@generic_expon, a, b);

polyn_1_3_Y = simpson1_3_range(a, b, NN, @generic_polynom);
polyn_3_8_Y = simpson3_8_range(a, b, NN, @generic_polynom);
polyn_s = integral(@generic_polynom, a, b);

trign_1_3_Y = simpson1_3_range(a, b, NN, @generic_trigonom);
trign_3_8_Y = simpson3_8_range(a, b, NN, @generic_trigonom);
trign_s = integral(@generic_trigonom, a, b);

# plot: expon
subplot(1, 3, 1);
plot([NN(1), NN(end)], [expon_s, expon_s], 'b', 'DisplayName', 'expon: integral');
hold on;
plot(NN, expon_1_3_Y, 'r', 'DisplayName', 'expon: simpson 1/3');
plot(NN, expon_3_8_Y, 'g', 'DisplayName', 'expon: simpson 3/8');
legend('show');
hold off;

# plot: polyn
subplot(1, 3, 2);
plot([NN(1), NN(end)], [polyn_s, polyn_s], 'k', 'DisplayName', 'polyn: integral');
hold on;
plot(NN, polyn_1_3_Y, 'm', 'DisplayName', 'polyn: simpson 1/3');
plot(NN, polyn_3_8_Y, 'c', 'DisplayName', 'polyn: simpson 3/8');
legend('show');
hold off;

# plot trign
subplot(1, 3, 3);
plot([NN(1), NN(end)], [trign_s, trign_s], 'r', 'DisplayName', 'trign: integral');
hold on;
plot(NN, trign_1_3_Y, 'b', 'DisplayName', 'trign: simpson 1/3');
plot(NN, trign_3_8_Y, 'g', 'DisplayName', 'trign: simpson 3/8');
legend('show');
hold off;
pause();