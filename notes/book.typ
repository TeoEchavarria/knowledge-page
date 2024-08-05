
#import "@preview/shiroa:0.1.0": *
#import "@preview/gentle-clues:0.9.0": *

#show: book
#let chapters = (
  ("Set Theory", (
    ("240724113358", "Multiplicity Zeros"),
    ("240724120916", "Conjunto"),
  )),
  ("Probability", (
    ("240724320916", "Probability"),
  )),
)

#let summary_dir = chapters.map(((cat, subs)) => {
  heading(depth: 1, cat)
  subs.map(((id, title)) => chapter("content/" + id + ".typ", title)).map(c => [- #c]).join()
})
// Crear un Python para crear el archivo de typs : Obtener una evaluacion del codigo de typs

#book-meta(
  title: "TeoNotes",
  summary : summary_dir.product()
)

// re-export page template
#import "/templates/page.typ": project
#let book-page = project
