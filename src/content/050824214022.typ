#import "/book.typ": *

#show : book-page.with(title: "Probabilidad : Exito en paso N")

= Probabilidad : Exito en paso N

Sea $X$ una #cross-link("/content/240724211427.typ")[variable aleatoria discreta] donde lo que se quiere es encontrar el primer individuo con una cierta caracteristica de interes.

Su #cross-link("/content/240724132447.typ")[espacio muestral] se veria de la siguiente forma:  $ S= (T,N T,N N T,N N N T,...) $ 

Donde $T$ es el evento de que salga la caracteristica de interes y $t$ la probabilidad de que esa caracteristica, siendo $N$ su complemento

Por lo que si queremos calcular una probabilidad como $P(X >= 3)$ , primeramente usamos  

Y tenemos que  $ P(X >= 3) = 1- P(X <= 3) $ 
Lo que seria entonces $1- (t dot ((1-t) dot  t) dot ((1-t) dot (1-t) dot  t))$

