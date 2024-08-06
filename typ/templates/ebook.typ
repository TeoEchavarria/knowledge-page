#import "@preview/shiroa:0.1.0": *
#import "/typ/templates/page.typ": project, part-style, dash-color
#import "/typ/templates/term.typ": reset-term-state

#let _page-project = project

/// Show a title page with a full page background
#let cover(display-title) = {
  // #set text(fill: black, font: titleFont)
  // #if logo != none {
  //   place(top + center, pad(top:1cm, image(logo, width: 3cm)))
  // }
  stack(
    1fr,
    align(
      center + horizon,
      block(
        width: 100%,
        fill: dash-color.lighten(70%),
        height: 6.2cm,
        pad(x: 2cm, y: 1cm)[
          // #text(size: 3em, weight: 900, project-meta.display-title)
          #text(size: 3em, weight: 900, [The Raindrop-Blue Book])
          #v(1cm, weak: true)
          // #text(size: 3em, project-meta.at("subtitle", default: none))
          #text(size: 2em, display-title)
          #v(1cm, weak: true)
          #text(size: 1em, weight: "bold", "Myriad-Dreamin等著")
        ],
      ),
    ),
    2fr,
  )
}

#let p = counter("book-part")
#let p-num = numbering.with("1")
#let default-styles = (
  cover-image: "./rm175-noon-02.jpg",
  cover: cover,
  part: it => {
    //set image(width: 100%, height: 100%)
    page(
      margin: 0cm,
      header: none,
      background: [
        #move(dy: 3%, scale(x: -130%, y: 130%, rotate(38.2deg, image("./rustacean-flat-gesture.svg", width: 130%))))
      ],
      {
        p.step()
        stack(
          1fr,
          align(
            right + bottom,
            block(
              width: 100%,
              fill: dash-color.lighten(70%),
              height: 6.2cm,
              pad(x: 1cm, y: 1cm)[
                #set text(size: 36pt)
                #v(1em)
                #locate(loc => {
                  heading([Part.#p-num(..p.at(loc))#sym.space] + it)
                })
              ],
            ),
          ),
          2fr,
        )
      },
    )
  },
  chapter: it => reset-term-state + it,
)

#let project(title: "", display-title: none, authors: (), spec: "", content, styles: default-styles) = {
  let display-title = display-title
  if display-title == none {
    display-title = title
  }

  // inherit styles
  let styles = default-styles + styles

  // set document metadata early
  set document(
    author: authors,
    title: title,
  )

  // set web/pdf page properties
  set page(numbering: "1")

  // todo: abstraction
  {
    // inherit from page setting
    show: _page-project.with(title: none, kind: none)

    //set image(width: 100%, height: 100%)
    set page(
      margin: 0cm,
      header: none,
      background: [
        #place({
          set block(spacing: -0.1em)
          image("./circuit-board.svg")
          image("./circuit-board.svg")
        })
        #move(dy: 3%, scale(x: -130%, y: 130%, rotate(38.2deg, image("./rustacean-flat-gesture.svg", width: 130%))))
      ],
    )

    // place book meta
    external-book(spec: (styles.inc)(spec))
    (styles.cover)(display-title)
  }

  locate(loc => {
    let project-meta = (title: title, display-title: display-title, book: book-meta-state.final(loc), styles: styles)

    {
      // inherit from page setting
      show: _page-project.with(title: none, kind: none)

      // set web/pdf page properties
      set page(numbering: none)

      let outline-numbering-base = numbering.with("1.")
      let outline-numbering(a0, ..args) = if a0 > 0 {
        h(1em * args.pos().len())
        outline-numbering-base(a0, ..args) + [ ]
      }

      let outline-counter = counter("outline-counter")
      show outline.entry: it => {
        let has-part = if it.body.func() != none and "children" in it.body.fields() {
          for ch in it.body.children {
            if "text" in ch.fields() and ch.text.contains("Part") {
              ch.text
            }
          }
        }

        if has-part == none {
          outline-counter.step(level: it.level + 1)
          outline-counter.display(outline-numbering)
        } else {
          outline-counter.step(level: 1)
        }
        it
      }

      outline(depth: 1, fill: repeat[.])
    }

    if project-meta.book != none {
      project-meta.book.summary.map(it => visit-summary(it, styles)).sum()
    }
  })

  content
}