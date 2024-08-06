#import "/src/book.typ": *

#show : book-page.with(title: "Union")

= Union

En teoría de #cross-link("/content/240724120916.typ")[conjuntos] la unión de dos conjuntos es el conjunto que contiene todos los elementos que pertenecen al menos a uno de los conjuntos originales. Si tienes dos conjuntos, $A$ y $B$, la unión de estos conjuntos se denota como $A union B$.

Matemáticamente, la unión se define como:

$ A union B = x : x in A text(" o ") x in B $


La operación de unión puede extenderse a más de dos conjuntos

$ union.big_{i in I} A_i = x : x in A_i text(" para algún ") i  in I \} $
