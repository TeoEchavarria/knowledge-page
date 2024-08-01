#import "/book.typ": *

#show : book-page.with(title: "Contable")

= Contable

Un #cross-link("/content/240724120916.typ")[conjunto] es contable si sus elementos se pueden contar uno a uno y asociar cada uno de ellos con un número entero positivo. Esto incluye conjuntos finitos y conjuntos infinitos que se pueden emparejar con los números naturales.


Formalmente, un conjunto  $A$  es contable si existe una función  $f: A arrow NN $  tal que para cada elemento  $a$  en  $A$  hay un número natural único  $n$  (es decir, $f(a) = n$ ), y para cada número natural  $n$  hay a lo más un elemento  $a$  en  $A$  tal que  $f(a) = n$ .
