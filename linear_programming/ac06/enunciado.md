# Centro de Distribuição e Comunidades Carentes
Temos três centros de distribuição e quatro comunidades carentes. Cara comunidade
precisa de uma quantiade minima de alimentos e cada centro tem uma quantidade limitada
de suprimentos.

### Necessidade das comunidades

| Comunidade 1 | Comunidade 2 | Comunidade 3 | Comunidade 4 |
|--------------|--------------|--------------|--------------|
| 80           | 70           | 60           | 90           |

### Quantidade de suprimentos

| Centro 1 | Centro 2 | Centro 3 |
|----------|----------|----------|
| 100      | 120      | 80       |

### Custo de transporte

|           | Comunidade 1 | Comunidade 2 | Comunidade 3 | Comunidade 4 |
|-----------|--------------|--------------|--------------|--------------|
| Centro 1  | 8            | 6            | 10           | 9            |
| Centro 2  | 9            | 12           | 13           | 7            |
| Centro 3  | 14           | 9            | 16           | 5            |

## Variáveis de Decisão
Quantos suprimentos os Centros 1, 2 e 3 vao entregar para as comunidades 1, 2, 3 e 4?

## Função objetivo
O nosso objetivo é diminuir o custo de transporte

$$
    f(x_{11}, x_{12}, x_{13}, x_{14}, x_{21}, x_{22}, x_{23}, x_{24}, x_{31}, x_{32}, x_{33}, x_{34}) = x_{11} \cdot 8 + x_{12} \cdot 6 + x_{13} \cdot 10 + x_{14} \cdot 9 + x_{21} \cdot 9 + x_{22} \cdot 12 + x_{23} \cdot 13 + x_{24} \cdot 7 + x_{31} \cdot 14 + x_{32} \cdot 9 + x_{33} \cdot 16 + x_{34} \cdot 5
$$

## Restrições
Restrições: Limites de suprimentos e necessidade das comunidades


### Restrição de necessidade mínima das comunidades
$$
    x_{11} + x_{21} + x_{31} \geq 80\\
    x_{12} + x_{22} + x_{32} \geq 70\\
    x_{13} + x_{23} + x_{33} \geq 60\\
    x_{14} + x_{24} + x_{34} \geq 90\\
$$

### Restrição de limite de suprimentos dos centros
$$
    x_{11} + x_{12} + x_{13} + x_{14} \leq 100\\
    x_{21} + x_{22} + x_{23} + x_{24} \leq 120\\
    x_{31} + x_{32} + x_{33} + x_{34} \leq 80
$$