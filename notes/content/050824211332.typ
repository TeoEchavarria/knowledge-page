#import "/book.typ": *

#show : book-page.with(title: "Distribucion Poisson")

= Distribucion Poisson


El #cross-link("/content/240724125751.typ")[experimento aleatorio] consiste en contar el numero de veces que ocurre un cierto #cross-link("/content/240724195050.typ")[evento] de interes por unidad de tiempo o espacio. $ X: text("numero de ocurrencias en el intervalo real.") $

#info(title : "Aclaracion")[
Es posible asumir que la #cross-link("/content/240724125842.typ")[probabilidad] de que un evento ocurra en una cierta unidad es la misma para todas las unidades de su tipo.]

Sea la #cross-link("/content/240724224325.typ")[funcion masa de probabilidad] de una poisson igual a: 
$ p(x)= (e^{ lambda} dot lambda^x)/x! $
Donde una forma de ver el $lambda$ es que es la media, o el promedio.

Algo curioso de la distribucion poisson es que tanto su  #cross-link("/content/240724225035.typ")[esperanza] como su  #cross-link("/content/240724230832.typ")[varianza] son iguales:$ E(X)= lambda, V(X)= lambda $

