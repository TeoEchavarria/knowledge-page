#import "/src/book.typ": *

#show : book-page.with(title: "Distribucion : Acumulada")

= Distribucion : Acumulada


Sea $p(x)$ su #cross-link("/content/240724224325.typ")[funcion masa de probabilidad] Por lo que su distribucion acumulada va ser igual a  $ F(X) = P(X <= x)=sum_{x_i <= x} p(x_i) $ 

En otras palabras es como sumar cada una de las probabilidades de $x$ hacia atras.

== variable_aleatoria_continua

Sea $f(x)$ su #cross-link("/content/240724215223.typ")[funcion densidad de probabilidad] Por lo cual su distribucion acumulada va a ser igual a :  $ F(X) = integral_{-infinity}^infinity f(t) d t $ 


=== Propiedades

 $ 0 <= F(x) <= 1 $ 
 $ text("Si ") x < y text(" Entonces")  F(x) < F(y) $ 
 $ P(a <= X <= b) = P(X <= b) - P(X <= a) = F(b) - F(a) $ 
