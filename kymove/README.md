
Publico um exemplo de um sistema de movimento.

Neste caso, utilizo alguns retângulos, que vão para qualquer direção, para cima, baixo, esquerda, direita e diagonais.
Basta clicar em cima, e movimentá-lo.

A maioria dos algorítimos que encontrei pela net, utilizam de um algoritmo simples, e funciona para movimentos na horizontal/vertical, mas não utilizam movimento nas diagonais, ou quando está implementado, não condiz com uma realidade física do movimento.

Defino:
Movimento + o movimento (simples) em horizontal ou vertical
Movimento x o movimento (composto) em diagonais.

Em movimento + você utiliza apenas um eixo, seja x ou y.
Em movimento x você utiliza dois eixo, x e y.

Quando você move-se em +, anda em uma velocidade v.
Quando você move-se em x, você deve andar em uma velocidade v / (raiz de 2);

Este algorítimo implemente essa característica.

Fisicamente falando, tanto o movimento em + ou x, é o mais próximo do real.

Outra característica legal, é a redução de velocidade.
Digamos que pressionou a tecla -> para ir para a esquerda.
O que acontece se agora você pressionar o seu oposto? A tecla <-?

Em outros algoritmos, você pressiona -> para andar 1 unidade, e pressiona <- para andar -1 unidade, então qual é o resultado de ' +1 - 1' ? Zero! Você fica parado!

Neste algoritmo não, ele entende que você está indo em uma direção, e quando pressiona o oposto, ele reduz a velocidade.
Atuando como um tipo de freio.

Bom proveito.

Luismar Chechelaky
