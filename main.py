from services.create_indexBook import create_book
from services.extract_title import create_summary


    # create_summary()
    # create_book()
    
import os
import re

def replace_imports(directory):
    for root, dirs, files in os.walk(directory):
        for filename in files:
            if filename.endswith('.typ'):  # Asegúrate de que estás modificando los archivos correctos
                file_path = os.path.join(root, filename)
                with open(file_path, 'r') as file:
                    content = file.read()
                
                # Reemplazo del contenido
                updated_content = re.sub(r'#import "/src/book.typ": \*', '#import "/book.typ": *', content)
                
                # Sobrescribe el archivo con el contenido actualizado
                with open(file_path, 'w') as file:
                    file.write(updated_content)
                print(f"Updated {file_path}")

if __name__ == "__main__":
# Llamar a la función con el directorio que contiene los archivos .typ
    replace_imports('./src/content')
