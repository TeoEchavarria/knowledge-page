#import "/book.typ": *

#show : book-page.with(title: "Probabilidad : Eventos Separados")

= Probabilidad : Eventos Separados

- Un evento esta separado del otro cuando, uno no depende del otro.

Un ejemplo facil es el lanzamiento de una moneda. Donde el lanzar una o tres, no depende una de la otra. Por lo que si lanzamos $N$ monedas y digamos que $X$  es el evento de que salgan las 3 monedas cara tendriamos que seria $P(X)=(1/2)^3$ 


El tema de eventos separados tambien es aplicable a la probabilidad_condicional dado que si planteamos una probalididad condicional a eventos independientes entonces pasa algo como esto 

$ P(A|B) = P(A)$ 
$ P(A union B) = P(A)*P(B)$ 
$ P(A union B) = P(A) + P(B)$ 
Observemos como en este ultimo casi no utilizamos la probabilidad_union_eventos dado que la interseccion entre $A$ y $B$ es vacia.
