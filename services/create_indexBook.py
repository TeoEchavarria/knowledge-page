import csv

def create_book():
    pre_content = """#import "@preview/shiroa:0.1.0": *
#import "@preview/gentle-clues:0.9.0": *

#show: book
    """

    post_content = """
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
#let book-page = project"""

    # Define the path to your CSV file
    csv_path = 'summary.csv'
    typ_path = 'notes/book.typ'

    # Read the CSV data
    with open(csv_path, mode='r', newline='', encoding='utf-8') as file:
        reader = csv.reader(file)
        next(reader)  # Skip the header

        # Organize data by chapters
        chapters = {}
        for row in reader:
            chapter, id, title, partial, embedding = row
            if chapter not in chapters:
                chapters[chapter] = []
            chapters[chapter].append((id, title))

    # Write to .typ file in the specified format
    with open(typ_path, mode='w', encoding='utf-8') as file:
        file.write(f"{pre_content}\n#let chapters = (\n")
        for chapter, entries in chapters.items():
            file.write(f'  ("{chapter}", (\n')
            for id, title in entries:
                file.write(f'    ("{id}", "{title}"),\n')
            file.write('  )),\n')
        file.write(f')\n{post_content}')