# Sistemas Lineares
Um sistema linear eh um conjunto de equacoes com $n$ incognitas, seus coeficientes e seus termos independentes.
Considere a seguinte equacao:

$$
a_1 x_1 + a_2 x_2 + \dots + a_n x_n = b
$$

Temos que $x_i$ sao incognitas, $a_i$ representam seus coeficientes e $b$ eh o termo independente, para $i = 1,\dots, n$.
Considere $S_n$ um sistema de $n$ equacoes e $n$ incognitas.

$$
S_{n} =
\begin{cases}
    a_{11}x_1 + a_{12}x_2 + \dots + a_{1n}x_n = b_1\\
    a_{21}x_1 + a_{22}x_2 + \dots + a_{2n}x_n = b_2\\
    \dots\\
    a_{n1}x_1 + a_{n2}x_2 + \dots + a_{nn}x_n = b_n\\
\end{cases}
$$

Temos que sua representacao matricial apresentara o formato $Ax = b$, onde A sera a matriz de coeficientes, $x$ uma matriz
coluna das incognitas e $b$ uma matriz coluna dos termos independentes:

$$
\begin{bmatrix}
    a_{11} & a_{12} & \cdots & a_{1n}\\
    a_{21} & a_{22} & \cdots & a_{2n}\\
    \vdots & \vdots & \ddots & \vdots\\
    a_{n1} & a_{n2} & \cdots & a_{nn}\\
\end{bmatrix}
*
\begin{bmatrix}
    x_1\\
    x_2\\
    \vdots\\
    x_n\\
\end{bmatrix}
=
\begin{bmatrix}
    b_1\\
    b_2\\
    \vdots\\
    b_n
\end{bmatrix}
$$

Temos que $B = [A : b]$ eh a matriz aumentada ou matriz completa do sistema.

$$
B =
\begin{bmatrix}
    a_{11} & a_{12} & \cdots & a_{1n} & b_1\\
    a_{21} & a_{22} & \cdots & a_{2n} & b_2\\
    \vdots & \vdots & \ddots & \vdots & \vdots\\
    a_{n1} & a_{n2} & \cdots & a_{nn} & b_n\\
\end{bmatrix}
$$

## Classificacao quanto ao numero de solucoes

Para sistemas lineares, temos 3 casos de solucoes possiveis:
- Existe solucao
    - Solucao definida
    - Solucao nao-definida: Infinitas solucoes
- Nao existe solucao

### Matriz triangular
Uma matriz $M = [a_{ij}]$ eh dita triangular superior se $j < i$, entao $a_{ij} = 0; i, j = 1, 2, \dots, n$.

$$
\left\{
\begin{align*}
    a_{11}x_1 + a_{12}x_2 + \dots + a_{1n}x_n = b_1\\
    a_{22}x_2 + \dots + a_{2n}x_n = b_2\\
    \vdots\\
    a_{nn}x_n = b_n\\
\end{align*}
\right.
$$

caso $\forall j,i \in \mathbb{N}; j, i \leq n(j > i \rightarrow a_{ij} = 0)$ chamamos a matriz de triangular inferior.

Temos que os casos em que $a_{ii} \not = 0; i = 1, 2, \dots, n$ a solucao eh definida. $x_{n} = \frac{b_n}{a_{nn}}$ e assim
por diante. Nos casos em que $a_{ii} = 0$ para algum $i \in [n]$:
$$
0x_i = b_i - \sum^{n}_{j = i + 1}(a_{ij}x_j)
$$

- Caso 01:
$$
b_i - \sum^{n}_{j = i + 1}(a_{ij}x_j) = 0
$$

Para qualquer valor de $x_i$, a equacao sera satisfeita, o sistema eh indefinido e admite infinitas solucoes.

- Caso 02:
$$
b_i - \sum^{n}_{j = i + 1}(a_{ij}x_j) \not = 0
$$

Nao existe valor de $x_i$ que satisfaca a equacao, o sistema eh incompativel e nao admite solucao.

Temos assim que para $a_{ii} = 0, i \in [n]$, O sistema eh indefinido ou incompativel, ou seja, nao apresenta resposta
exata.

### Implementacao de Substituicao Retroativa

```matlab
function res = retro_substitution(M)
    %{
        M: matriz triangular superior aumentada.
        output: Vetor solucao.
    %}
    [lin, col] = size(M);
    X = ones(lin, 1);

    for i = lin:-1:1
        sum = 0;
        for j = i + 1:col-1
            sum += M(i,j) * X(j);
        endfor
        X(i, 1) = (M(i, col) - sum) / M(i, i);
    endfor

    res = X;
endfunction
```

## Metodos Diretos
Sao metodos que determinam a solucao de um sistema linear com um numero finito de operacoes

### Metodo de Gauss
Eh uma forma de triangularizar uma matriz usando operacoes elementares de matrizes. O metodo percorre a diagonal principal
da matriz e para cada elemento abaixo do pivo da vez (elemento da diagonal) ele calculara um multiplicador. O objetivo eh
triangularizar a matriz subtraindo as linhas abaixo do pivo pela linha do pivo vezes o multiplicador. Exemplo:

$$
\begin{bmatrix}
    2 & 3 & -1 & 5\\
    4 & 4 & -3 & 3\\
    2 & -3 & 1 & -1\\
\end{bmatrix}
\rightarrow^{L_2 \leftarrow L_2 + L_1 * (-\frac{4}{2})}
\begin{bmatrix}
    2 & 3 & -1 & 5\\
    0 & -2 & -1 & -7\\
    2 & -3 & 1 & -1\\
\end{bmatrix}
\rightarrow^{L_3 \leftarrow L_3 + L_1 * (-\frac{2}{2})}
\begin{bmatrix}
    2 & 3 & -1 & 5\\
    0 & -2 & -1 & -7\\
    0 & -6 & 2 & -6\\
\end{bmatrix}
\rightarrow^{L_3 \leftarrow L_3 + L_2 * (-\frac{-6}{-2})}
$$
$$
\begin{bmatrix}
    2 & 3 & -1 & 5\\
    0 & -2 & -1 & -7\\
    0 & 0 & 5 & 15\\
\end{bmatrix}
$$

- Para $a_{11}$ como pivo, temos os multiplicadores $m_{21} = -\frac{a_{21}}{a_{11}} = -\frac{4}{2} = -2, m_{31} = -\frac{a_{31}}{a_{11}} = -\frac{2}{2} = -1$;
- Para $a_{22}$ como pivo, temos o multiplicador $m_{31} = -\frac{a_{32}}{a_{22}} = -\frac{-6}{-2} = -3$;
- Para $a_{33}$ como pivo, nao temos multiplicadores.

Uma boa medida para avaliar a precisao dos calculos eh o residuo, que eh dado por:
$$
r = b - A\overline{x}
$$
### Implementacao do Metodo de Gauss

```matlab
function res = gauss(M)
    %{
        M: matriz aumentada.
        output: M triangulada.
    %}

    [n, _] = size(M);

    for i = 1:n

        if M(i, i) == 0
            for j = i + 1 : n
                M(i, :) += M(j, :);
            endfor
        endif

        for j = i + 1 : n
            mult = M(j, i) / M(i, i);
            M(j, :) -= M(i, :) * mult;
        endfor
    endfor

    res = M;
endfunction
```