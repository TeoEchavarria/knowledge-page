#import "/book.typ": *

#show : book-page.with(title: "Probabilidad Total")

= Probabilidad Total

$ P(A) = P(A union B) + P(A union B')= P(A|B) dot P(B)+P(A|B') dot P(B') $

Otra forma en la que me gusta ver esta probabilidad total es como un diagrama 

#image("assets/images/prob-total.png")

Digamos que $A$ es el #cross-link("/content/240724195050.typ")[evento] de estar enfermo y $B$ es su complemento, y $D$ es el evento de que la prueba salga positiva. 



Si queremos calcular la #cross-link("/content/240724125842.typ")[probabilidad] total por ejemplo de que la prueba salga positiva seria algo como 

$ P(D)= P(A)*P(D|A)+P(B)*P(D|B) $

Siguiendo en si cada uno de los caminos


