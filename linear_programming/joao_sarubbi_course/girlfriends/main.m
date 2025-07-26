c = [1, 1];
A = [100 180; 4 2];
b = [800 20];
ctype = ["U" "U"];
vartype = ["I" "I"];
sense = -1;

glpk(c', A, b', [0 0], [Inf Inf], ctype, vartype, sense)