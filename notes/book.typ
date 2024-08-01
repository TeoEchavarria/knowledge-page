
#import "@preview/shiroa:0.1.0": *
#import "@preview/gentle-clues:0.9.0": *

#show: book

// Crear un Python para crear el archivo de typs : Obtener una evaluacion del codigo de typs

#book-meta(
  title: "shiroa",
  summary: [    
    - #chapter("content/240724113358.typ")[Ceros de Multiplicidad]
    - #chapter("content/240724235555.typ")[Teorema : Valor Intermedio]
    - #chapter("content/240724235728.typ")[Teorema : Valores Extremos]
    - #chapter("content/250724000118.typ")[Teorema : Taylor]
    - #chapter("content/250724000551.typ")[Serie de tiempo]
    - #chapter("content/250724000610.typ")[Estacionalidad]
    = Teoria de conjuntos
    - #chapter("content/240724120916.typ")[Conjunto]
    - #chapter("content/240724124455.typ")[Subconjunto]
    - #chapter("content/240724204415.typ")[Complemento]
    - #chapter("content/240724121355.typ")[Contable]
    - #chapter("content/240724131724.typ")[Union]
    - #chapter("content/240724130645.typ")[Interseccion]
    = Probabilidad
    - #chapter("content/240724125842.typ")[Probabilidad]
    - #chapter("content/240724130551.typ")[Probabilidad : Condicional]
    - #chapter("content/240724233812.typ")[Probabilidad : Union de Eventos]
    - #chapter("content/240724125751.typ")[Experimento Aleatorio]
    - #chapter("content/240724225035.typ")[Esperanza]
    - #chapter("content/240724230832.typ")[Varianza]
    - #chapter("content/240724132447.typ")[Espacio Muestral]
    - #chapter("content/240724195050.typ")[Evento]
    - #chapter("content/240724205512.typ")[Complemento de Probabilidad]
    - #chapter("content/240724205621.typ")[Variable Aleatoria]
    - #chapter("content/240724205621.typ")[Variable Aleatoria Discreta]
    - #chapter("content/240724214235.typ")[Variable Aleatoria Continua]
    - #chapter("content/240724215223.typ")[Funcion Densidad de Probabilidad]
    - #chapter("content/240724224325.typ")[Funcion Masa de Probabilidad]
    - #chapter("content/240724224528.typ")[Variable Continua basada en otra Variable Continua]
  ]
)



// re-export page template
#import "/templates/page.typ": project
#let book-page = project
