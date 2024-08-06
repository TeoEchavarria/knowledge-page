#import "/src/book.typ": *

#show : book-page.with(title: "Varianza")

= Varianza

La varianza tanto para una #cross-link("/content/240724205621.typ")[variable aleatoria] ya sea #cross-link("/content/240724214235.typ")[continua]  o #cross-link("/content/240724211427.typ")[discreta] se tiene que: 
$ text("Var")[X] = E[X^2] - (E[X])^2 $

Donde ya vimos como calcular la #cross-link("/content/240724225035.typ")[esperanza]

= Propiedades
$ text("Var")[a + b X] = b^2 text("Var")[X] $
