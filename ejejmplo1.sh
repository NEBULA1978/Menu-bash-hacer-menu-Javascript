#|/bin/bash

# si tengo 20 nombres en archivo de texto como podria poner un cat a cada nombre

# Si quieres ver el contenido de un archivo de texto llamado "archivo.txt" que contiene 20 nombres línea por línea usando el comando cat, puedes usar el comando cat junto con un bucle for de la siguiente manera:

for i in $(cat archivo.txt); do
    cat $i
done

# Este comando leerá el contenido de "archivo.txt" línea por línea y ejecutará el comando cat para cada nombre en el archivo. Esto mostrará el contenido de cada archivo en la terminal.