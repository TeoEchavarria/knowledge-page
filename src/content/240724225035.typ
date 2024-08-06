#import "/src/book.typ": *

#show : book-page.with(title: "Esperanza")

= Esperanza

Cuando es una #cross-link("/content/240724211427.typ")[variable aleatoria discreta]: 
	 $ mu = E(x) = sum x*P(x) $ 
En el caso de ser una #cross-link("/content/240724214235.typ")[variable aleatoria continua]: 

 $ E[X] = integral_(-infinity)^(infinity) x f(x) d x $ 



=== Propiedades
 $ E[a + b X] = a + b  E[X] $ 
