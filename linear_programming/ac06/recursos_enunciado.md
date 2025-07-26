# Fábrica
Uma fábrica vende 2 produtos, 1 e 2, que despendem de 3 recursos da empresa,
tempo de máquina, mão de obra e matéria prima.

### Custo para produzir os produtos

|                  | Produto 1 | Produto 2 |
|------------------|-----------|-----------|
| Tempo de máquina | 3         | 2         |
| Mão de obra      | 2         | 4         |
| Matéria-Prima    | 4         | 3         |

### Disponibilidade de Recursos

| Tempo de máquina | Mão de obra | Matéria prima |
|------------------|-------------|---------------|
| 240              | 320         | 360           |

## Variáveis de Decisão
Precisamos saber quanto vender do produto 1 e 2.

## Função Objetivo
Nosso objetivo é maximizar o lucro.
- Produto 1: R$ 30
- Produto 2: R$ 40

$$
    f(x_1, x_2) = x_1 \cdot 30 + x_2 \cdot 40
$$

## Restrições
As restrições são as disponibilidades de recursos.

$$
    x_1 \cdot 3 + x_2 \cdot 2 \leq 240\\
    x_1 \cdot 2 + x_2 \cdot 4 \leq 320\\
    x_1 \cdot 4 + x_2 \cdot 3 \leq 360
$$