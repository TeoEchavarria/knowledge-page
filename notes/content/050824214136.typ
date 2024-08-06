#import "/book.typ": *

#show : book-page.with(title: "Distribucion : Binomial")

= Distribucion : Binomial

Un experimento aleatorio es llamado Binomial si cumple las siguientes caracteristicas: 
- Consta de $n$ pruebas identicas e probabilidad_eventos_separados|independientes. 
- Cada prueba tiene dos posibles resultados ’Exito’ o ’Fracaso’ (distribucion_bernoulli). 
- La probabilidad de Exito es constante en las $n$ pruebas y se denota por $p$. 
- La variable_aleatoria de interes es 


$X$: numero de exitos en los $n$ ensayos.  Donde $A_X = {0, 1, · · · , n}.$
Sea su funcion_masa_probabilidad  $ p(x)= text("binom") n times dot p^x dot (1-p)^{1-x}  $ 

Sea su esperanza y su varianza igual a:  $ E(X)= n dot p, V(X)= n dot p dot (1-p) $ 

