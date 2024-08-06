#import "@preview/shiroa:0.1.0": *
#import "@preview/gentle-clues:0.9.0": *

#show: book
    
#let chapters = (
  ("AUX", (
    ("240724195050", "Evento"),
    ("250724000118", "Teorema : Taylor"),
    ("240724131724", "Union"),
    ("240724125751", "Experimento Aleatorio"),
    ("240724235728", "Teorema : Valores Extremos"),
    ("240724205512", "Complemento de Probabilidad"),
    ("240724224325", "Funcion Masa de Probabilidad"),
    ("240724214235", "Variable Aleatoria Continua"),
    ("240724121355", "Contable"),
    ("250724000551", "Serie de tiempo"),
    ("240724224528", "Variable Continua basada en otra Variable Continua"),
    ("240724125842", "Probabilidad"),
    ("240724130645", "Interseccion"),
    ("240724211427", "Variable Aleatoria Discreta"),
    ("240724230832", "Varianza"),
    ("050824200708", "Vector"),
    ("250724000610", "Estacionalidad"),
    ("240724225035", "Esperanza"),
    ("240724132447", "Espacio Muestral"),
    ("240724120916", "Conjunto"),
    ("240724204415", "Complemento"),
    ("240724235555", "Teorema : Valor Intermedio"),
    ("240724130551", "Probabilidad : Condicional"),
    ("240724215223", "Funcion Densidad de Probabilidad"),
    ("050824203139", "Probabilidad Total"),
    ("240724113358", "Ceros de Multiplicidad"),
    ("240724124455", "Subconjunto"),
    ("240724205621", "Variable Aleatoria"),
    ("240724233812", "Probabilidad : Union de Eventos"),
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
#import "/templates/page.typ": project
#let book-page = project