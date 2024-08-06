=import "/book.typ": *

=show : book-page.with(title: "Distribucion : Acumulada")

= Distribucion : Acumulada


Sea $p(x)$ su funcion_masa_probabilidad. Por lo que su distribucion acumulada va ser igual a  $ F(X) = P(X <= x)=sum_{x_i <= x} p(x_i) $ 

En otras palabras es como sumar cada una de las probabilidades de $x$ hacia atras.

== variable_aleatoria_continua

Sea $f(x)$ su funcion_densidad_probabilidad. Por lo cual su distribucion acumulada va a ser igual a :  $ F(X) = integral_{-infinity}^infinity f(t) dt $ 

=== Propiedades

 $ 0 <= F(x) <= 1 $ 

 $ text("Si ") x < y text(" Entonces")  F(x) < F(y) $ 
 $ P(a <= X <= b) = P(X <= b) - P(X <= a) = F(b) - F(a) $ 
