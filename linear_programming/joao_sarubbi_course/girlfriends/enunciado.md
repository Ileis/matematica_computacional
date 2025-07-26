# O problema das duas namoradas

Um estudante de pesquisa operacional tem duas namoradas, e ele quer aproveitar
o máximo de tempo disponivel para sair com elas, respeitando a restrição de
dinheiro.

- 2 namoradas
- 800 reais para gastar
- 20h disponiveis
- marina: 180 reais por noite, 2h de saida
- bruna: 100 reias por noite, 4h de saida
- quantas noites ele deve sair com cada uma delas para que ele saia o maximo
    possivel respeitando as restrições de tempo e dinheiro?

## Variáveis de Decisão
O que não sabemos ainda?: Quantos dias sairemos com cada namorada. O domínio das
variaveis é o conjunto dos naturais.

- $x$ é a quantidade de vezes que ele sairá com Bruna;
- $y$ é a quantidade de vezes que ele sairá com Marina.

O problema pode ser modelado com os seguintes sistemas:

$$
\begin{cases}
x \cdot 100 + y \cdot 180\\
x \cdot 4 + y \cdot 2
\end{cases}
$$

## Função Objetivo
Queremos maximizar a quantidade de vezes que ele irá sair. O objetivo da questão é saber quantas vezes ele vai sair com Bruna $(x)$ e Marina $(y)$.
$$
x + y
$$

## Restrições
Temos duas restrições: Dinheiro e Tempo.

### Dinheiro
$$
    x \cdot 100 + y \cdot 180 \leq 800
$$

### Tempo
$$
    x \cdot 4 + y \cdot 2 \leq 20
$$
