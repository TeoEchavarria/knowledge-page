#import "@preview/shiroa:0.1.0": *
#import "/typ/templates/ebook.typ"

#show: ebook.project.with(
  title: "teo-echavarria-notes",
  display-title: "TeoNotes",
  spec: "book.typ",
  // set a resolver for inclusion
  styles: (
    inc: it => include it,
  ),
)