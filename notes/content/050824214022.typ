#import "/book.typ": *

#show : book-page.with(title: "Probabilidad : Exito en paso N")

= Probabilidad : Exito en paso N

Sea $X$ una variable_aleatoria_discreta donde lo que se quiere es encontrar el primer individuo con una cierta caracteristica de interes.

Su espacio_muestral se veria de la siguiente forma:  $ S= (T,NT,NNT,NNNT,...) $ 

Donde $T$ es el evento de que salga la caracteristica de interes y $t$ la probabilidad de que esa caracteristica, siendo $N$ su complemento

Por lo que si queremos calcular una probabilidad como $P(X >= 3)$ , primeramente usamos  

Y tenemos que  $ P(X >= 3) = 1- P(X <= 3) $ 
Lo que seria entonces $1- (t dot ((1-t) dot  t) dot ((1-t) dot (1-t) dot  t))$

