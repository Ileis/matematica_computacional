# Ligas Metálicas
Suponha uma empresa que produza quatro ligas diferentes a partir de dois metais
básicos. O objetivo é saber quanto produzir de cada liga, a partir de uma
quantidade limitada de metais base.


### Proporção do metal na liga
| Metal | Liga 1 | Liga 2 | Liga 3 | Liga 4 |
|-------|--------|--------|--------|--------|
|Metal 1| 0.5    | 0.6    | 0.3    | 0.1    |
|Metal 2| 0.5    | 0.4    | 0.7    | 0.9    |

### Preço de venda da liga

| Liga 1 | Liga 2 | Liga 3 | Liga 4 |
|--------|--------|--------|--------|
| 10     | 15     | 18     | 40     |

### Disponibilidade do metal

| Metal 1 | Metal 2 |
|---------|---------|
| 6       | 4       |

## Variáveis de Decisão
Quantas toneladas eu vendo da liga 1, 2, 3 e 4?
- Liga 1: $x_1$
- Liga 2: $x_2$
- Liga 3: $x_3$
- Liga 4: $x_4$

## Função Objetivo
O objetivo dessa questão é maximizar o lucro. Partindo disso temos que nossa função objetivo calcula o lucro total.

$$
    f(x_1, x_2, x_3, x_4) = x_1 \cdot 10 + x_2 \cdot 15 + x_3 \cdot 18 + x_4 \cdot 40
$$

## Restrições
Temos duas restrições: a quantidade de metal 1 e 2.

$$
    x_1 \cdot 0.5 + x_2 \cdot 0.6 + x_3 \cdot 0.3 + x_4 \cdot 0.1 \leq 6\\
    x_1 \cdot 0.5 + x_2 \cdot 0.4 + x_3 \cdot 0.7 + x_4 \cdot 0.9 \leq 4
$$