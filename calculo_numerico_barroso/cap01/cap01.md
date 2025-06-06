# Erros
Dado um problema matematico resolvido por metodos numericos, temos uma sequencia de
adaptacoes que podem levar a propagacao de erros na resolucao.

$$
\begin{align*}
\text{Problema fisico} \Rightarrow^{\text{Modelagem}} \text{Modelo matematico} \Rightarrow^{\text{Resolucao}} \text{Solucao}
\end{align*}
$$

## Erros na fase de modelagem

- Muitos modelos matematicos abstraem boa parte do problema real, ignorando coisas que afetam minimamente na solucao.
    - Lancamento livre de um objeto ($d = d_0 + v_0 t + \frac{1}{2}at^2$) ignora resistencia do ar e etc.
- Erros de medicao podem acontecer, causando um pequeno erro na solucao.
    - Medir o tempo errado em determinado lancamento causaria uma grande variacao de distancia.

## Erros na fase de resolucao

Numeros sao representados por numeros binarios em computadores. A representacao de numeros reais nao eh perfeita, isso
se da pela natureza discreta do computador. Para que um numero $n$ seja perfeitamente representado por um numero finito
de digitos binarios, $n = \frac{r}{2^k}$, para $k \in \mathbb{Z}$. Um computador sempre apresentara um limite de espaco
para representar um numero, sendo assim, temos um numero de casas decimais validas que representam determinado numero,
chamamos isso de precisao.

### Erros de arredondamento

Muitas vezes nao conseguimos representar determinado numero em binario e simplesmente arredondamos tal representacao
para o numero mais proximo que pode ser representado no computador. Esse arredondamento eh limitado pela precisao da
representacao de numeros reais no computador.

```c
#include <stdio.h>
#include <stdlib.h>

int main()
{
    double x =  1, xx = 0;

    do 
    {
        x /= 2;
        xx = 1.0 + x;
    }
    while(xx > 1.0F);

    printf("value: %.32f", x);

    return EXIT_SUCCESS;
}
```

### Erros de truncamento

Erros de truncamento acontecem quando limitamos um processo que deveria ser infinito ou muito longo, por exemplo, a soma
de uma sequencia infinita como:

$$
sen(x) = x - \frac{x^3}{3!} + \frac{x^5}{5!} - \frac{x^7}{7!} + \dots
$$

Geralmente limitamos tal processo iterativo para encontrar um valor proximo o suficiente para efetuar os calculos desejados.
Limitamos tais processos pela ordem do erro de arredondamento, que dominara sobre a representacao dos numeros em determinado
sistema.

### Propagacao de erros

Operacoes matematicas em numeros que apresentam erros de arredondamento e truncamento propagam erros, diminuindo a precisao
dessas operacoes.