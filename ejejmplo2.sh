#|/bin/bash

# Para añadir el prefijo "cat" a cada uno de los nombres de archivos mencionados, puedes usar un bucle for en bash. Primero, asegúrate de estar en el directorio donde se encuentran los archivos. Luego, puedes usar el siguiente comando:

for file in ex1000_ordenar_cadenas_segun_ultimo_caracter.py ex1001_ordenar_numeros_segun_modulo.py ex1002_extraer_vocales_minusculas_texto.py; do mv "$file" "cat_$file"; done

# Este comando itera sobre cada uno de los nombres de archivos especificados y usa el comando mv para renombrarlos añadiendo "cat_" al principio de cada nombre de archivo.

# Si prefieres hacerlo de manera más compacta, puedes usar el siguiente comando:

for file in ex1000_ordenar_cadenas_segun_ultimo_caracter.py ex1001_ordenar_numeros_segun_modulo.py ex1002_extraer_vocales_minusculas_texto.py; do mv "$file" "cat_${file#ex}"; done

# Este comando funciona de manera similar al anterior, pero usa la expansión de prefijo para eliminar el prefijo "ex" de cada nombre de archivo antes de añadir el prefijo "cat".