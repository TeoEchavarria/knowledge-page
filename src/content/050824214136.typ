#import "/src/book.typ": *

#show : book-page.with(title: "Distribucion : Binomial")

= Distribucion : Binomial

Un #cross-link("/content/240724125751.typ")[experimento aleatorio] es llamado Binomial si cumple las siguientes caracteristicas: 
- Consta de $n$ pruebas identicas e #cross-link("/content/050824214005.typ")[independientes]. 
- Cada prueba tiene dos posibles resultados ’Exito’ o ’Fracaso’ (#cross-link("/content/050824214125.typ")[distribucion bernoulli]). 
- La probabilidad de Exito es constante en las $n$ pruebas y se denota por $p$. 
- La variable_aleatoria de interes es 


$X$: numero de exitos en los $n$ ensayos.  Donde $A_X = {0, 1, · · · , n}.$
Sea su  #cross-link("/content/240724224325.typ")[funcion masa de probabilidad] $ p(x)= text("binom") n times dot p^x dot (1-p)^{1-x}  $

Sea su esperanza y su varianza igual a:  $ E(X)= n dot p, V(X)= n dot p dot (1-p) $ 

