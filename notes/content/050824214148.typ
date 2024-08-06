#import "/book.typ": *

#show : book-page.with(title: "Distribucion : Hipergeometrica")

= Distribucion : Hipergeometrica


Es practicamente igual a una  #cross-link("/content/050824214136.typ")[distribucion binomial] mas en este caso tenemos 2 grupos, donde $K$ es el numero de personas que tienen la caracteristica de interes, de toda la poblacion $N$.

Lo que vamos a hacer es calcular probabilidades sacando un subconjunto de $n$ personas.

Su  #cross-link("/content/240724224325.typ")[funcion masa de probabilidad] es:

 $ p(x)=(text("binom") K times  dot  text("binom")(N-K)(n-x) )/(text("binom") N K) $ 
Se denota como  $ X tilde.op text("Hiper")(N,K,n) $ 

Sea su  #cross-link("/content/240724225035.typ")[esperanza] y su  #cross-link("/content/240724230832.typ")[varianza] igual a :  $ E(X) = n dot  (K)/(N) , V(X)=((N-n))/((N-1)) dot  n dot  (K)/(N) dot (1-(K)/(N)) $ 
