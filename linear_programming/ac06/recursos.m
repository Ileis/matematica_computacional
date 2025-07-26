obj = [30 40]';
rcons = [
    3 2;
    2 4;
    4 3;
];
lcons = [240 320 360]';
lb = [0 0];
ub = [Inf Inf];
ctype = ["U" "U" "U"];
vartype = ["I" "I"];
sense = -1;

glpk(obj, rcons, lcons, lb, ub, ctype, vartype, sense)