obj = [8 6 10 9 9 12 13 7 14 9 16 5]';
lcons = [
    1 0 0 0 1 0 0 0 1 0 0 0;
    0 1 0 0 0 1 0 0 0 1 0 0;
    0 0 1 0 0 0 1 0 0 0 1 0;
    0 0 0 1 0 0 0 1 0 0 0 1;
    1 1 1 1 0 0 0 0 0 0 0 0;
    0 0 0 0 1 1 1 1 0 0 0 0;
    0 0 0 0 0 0 0 0 1 1 1 1;    
];
rcons = [80 70 60 90 100 120 80]';
lb = [0 0 0 0 0 0 0 0 0 0 0 0];
ub = [Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf];
ctype = ["L" "L" "L" "L" "U" "U" "U"];
vartype = ["I" "I" "I" "I" "I" "I" "I" "I" "I" "I" "I" "I" ];

glpk(obj, lcons, rcons, lb, ub, ctype, vartype)