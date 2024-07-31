
#import "@preview/shiroa:0.1.0": *
#import "@preview/gentle-clues:0.9.0": *

#show: book

#book-meta(
  title: "shiroa",
  summary: [    
    = Teoria de conjuntos
    - #chapter("content/240724113358.typ")[Ceros de Multiplicidad]
    - #chapter("content/240724120916.typ")[Conjunto]
    = Probabilidad
    - #chapter("content/240724125751.typ")[Experimento Aleatorio]
    - #chapter("content/240724230832.typ")[Varianza]
  ]
)



// re-export page template
#import "/templates/page.typ": project
#let book-page = project
