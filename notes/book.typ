#import "@preview/shiroa:0.1.0": *
#import "@preview/gentle-clues:0.9.0": *

#show: book
    
#let chapters = (
  ("AUX", (
    ("050824214047", "Aproximacion : Hipergeometrica con una Binomial"),
    ("050824214035", "Aproximar : Binomial con una Poisson"),
    ("240724113358", "Ceros de Multiplicidad"),
    ("240724204415", "Complemento"),
    ("240724205512", "Complemento de Probabilidad"),
    ("240724120916", "Conjunto"),
    ("240724121355", "Contable"),
    ("050824214059", "Distribucion : Acumulada"),
    ("050824214125", "Distribucion : Bernoulli"),
    ("050824214136", "Distribucion : Binomial"),
    ("050824214148", "Distribucion : Hipergeometrica"),
    ("050824213908", "Distribucion Normal"),
    ("050824211332", "Distribucion Poisson"),
    ("240724132447", "Espacio Muestral"),
    ("240724225035", "Esperanza"),
    ("250724000610", "Estacionalidad"),
    ("050824204634", "Estacionalidad"),
    ("240724195050", "Evento"),
    ("240724125751", "Experimento Aleatorio"),
    ("240724215223", "Funcion Densidad de Probabilidad"),
    ("240724224325", "Funcion Masa de Probabilidad"),
    ("240724130645", "Interseccion"),
    ("050824204758", "Matriz"),
    ("240724125842", "Probabilidad"),
    ("240724130551", "Probabilidad : Condicional"),
    ("050824213943", "Probabilidad : Conjunto Vacio"),
    ("050824214005", "Probabilidad : Eventos Separados"),
    ("050824214022", "Probabilidad : Exito en paso N"),
    ("240724233812", "Probabilidad : Union de Eventos"),
    ("050824213923", "Probabilidad Condicional"),
    ("050824203139", "Probabilidad Total"),
    ("250724000551", "Serie de tiempo"),
    ("240724124455", "Subconjunto"),
    ("250724000118", "Teorema : Taylor"),
    ("240724235555", "Teorema : Valor Intermedio"),
    ("240724235728", "Teorema : Valores Extremos"),
    ("240724131724", "Union"),
    ("240724205621", "Variable Aleatoria"),
    ("240724214235", "Variable Aleatoria Continua"),
    ("240724211427", "Variable Aleatoria Discreta"),
    ("240724224528", "Variable Continua basada en otra Variable Continua"),
    ("240724230832", "Varianza"),
    ("050824200708", "Vector"),
  )),
)

#let summary_dir = chapters.map(((cat, subs)) => {
  heading(depth: 1, cat)
  subs.map(((id, title)) => chapter("content/" + id + ".typ", title)).map(c => [- #c]).join()
})
// Crear un Python para crear el archivo de typs : Obtener una evaluacion del codigo de typs

#book-meta(
  title: "TeoNotes",
  repository: "https://github.com/teoechavarria/notes",
  summary : summary_dir.join()
)

// re-export page template
#import "/notes/templates/page.typ": project
#let book-page = project