import os
import re
import csv

def create_summary():
    # Definir el directorio donde están los archivos .typ
    directory = 'notes/content'

    # Preparar una lista para almacenar las filas del CSV
    rows = []

    # Recorrer todos los archivos en el directorio
    for filename in os.listdir(directory):
        if filename.endswith('.typ'):
            # Construir la ruta completa del archivo
            path = os.path.join(directory, filename)

            # Leer el contenido del archivo
            with open(path, 'r') as f:
                content = f.read()

            # Extraer el título del archivo (asumiendo una estructura fija)
            match = re.search(r'#show : book-page.with\(title: "(.*?)"\)', content)
            if match:
                title = match.group(1)
            else:
                title = 'Unknown'  # O manejar de otra manera si el título no se encuentra

            # Añadir la fila a la lista
            rows.append(['AUX', filename.replace(".typ", ""), title, 0, 0])

    # Ordenar las filas por el título
    rows.sort(key=lambda x: x[2])  # x[2] es el índice del título en la fila

    # Crear el archivo CSV y escribir las filas ordenadas
    with open('summary.csv', 'w', newline='') as file:
        writer = csv.writer(file)
        writer.writerow(['Chapter', 'ID', 'Title', 'PartialEmbedding', 'Embedding'])
        writer.writerows(rows)
