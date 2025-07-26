obj = [10 15 18 20];
lcons = [
    0.5 0.6 0.3 0.1;
    0.5 0.4 0.7 0.9
];
rcons = [
    6 4
];
lb = [0 0 0 0];
ub = [Inf Inf Inf Inf];
ctype = ["U" "U"];
vartype = ["C" "C" "C" "C"];
sense = -1;

glpk(obj', lcons, rcons', lb', ub', ctype, vartype, sense)