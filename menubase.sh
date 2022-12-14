#!/bin/bash

while :; do
    #Menu
    clear
    echo -e "\e[1;32m"
    echo " MENU SCRIPT V.1 "
    echo ""
    echo "1. Mostrar directorio"
    echo "2. Mostrar calendario"
    echo "3. Mostrar dato"
    echo "5. Ejecutar script Ex07_codigo_prueba.js "
    echo "6. Ver script Ex07_codigo_prueba.js "
    echo "7. Ver los archivos .js en el directorio actual"
    echo "8. Enviarnombres los archivos .js en el directorio actual a archivo-nombres.txt"
    echo "9. Ver contenido de archivo archivo-nombres.txt"
    echo "10. Crear archivo2.txt añadiendo el prefijo node con un espacio a cada uno de los nombres de archivos mencionados"
    echo "11. Ver archivo2.txt "
    echo "12. Introducir nombres archivos .js en archivo nombres.txt"
    echo "13. Ver nombres archivos .js en archivo nombres.txt"
    echo "14. Generar en archivo3.txt echo 1. Ex07_codigo_prueba.js hasta numero de archivos .js"
    echo "15. Ver en archivo3.txt "
    echo "16. Crear la forma del menu de abajo con nº y el nombre con node delante del nombre archivo .js y copio por consola y pego en archivo nombres2.txt"
    echo "4. Salir"
    echo ""
    #Escoger menu
    echo -n "Escoger opcion: "
    read opcion
    #Seleccion de menu
    case $opcion in
    1)
        echo "Mostrando directorio"
        ls
        read foo
        ;;
    2)
        echo "Mostrando calendario"
        cal
        read foo
        ;;
    3)
        echo "Mostrando datos"
        date
        read foo
        ;;
    5)
        echo "Ejecutar script Ex07_codigo_prueba.js "
        node Ex07_codigo_prueba.js 
        
        read foo
        ;;
    6)
        echo "Ver script Ex07_codigo_prueba.js "
        cat Ex07_codigo_prueba.js
        
        read foo
        ;;
    7)
        echo "Ver los archivos .js en el directorio actual "
        ls *.js
        
        read foo
        ;;
    8)
        echo "Enviarnombres los archivos .js en el directorio actual a archivo-nombres.txt "
        ls *.js > archivo-nombres.txt
        
        read foo
        ;;
    9)
        echo "Ver contenido de archivo archivo-nombres.txt"
        cat archivo-nombres.txt
        
        read foo
        ;;
    10)
        echo "Crear archivo2.txt añadiendo el prefijo node con un espacio a cada uno de los nombres de archivos mencionadost"
        for file in $(cat archivo-nombres.txt); do echo "node $file" >> archivo2.txt; done
        
        read foo
        ;;
    11)
        echo "Ver archivo2.txt"
        cat archivo2.txt
        
        read foo
        ;;
    12)
        echo "Introducir nombres archivos .js en archivo nombres.txt"
        ls *.js > archivo-nombres.txt
        
        read foo
        ;;
    13)
        echo "Ver nombres archivos .js en archivo nombres.txt"
        cat archivo-nombres.txt

        read foo
        ;;
    14)
        echo "Generar en archivo3.txt echo 1. Ex07_codigo_prueba.js hasta numero de archivos .js"
        
        # Githua copilot codig
        # for file in $(cat archivo-nombres.txt); do echo "echo 1. $file" >> archivo3.txt; done
        ./'prueba-nombres-menu-BUENO copy.sh'

        read foo
        ;;
    15)
        echo "Ver en archivo3.txt"
        
        cat nombres3.txt

        read foo
        ;;
    16)
        echo "Crear la forma del menu de abajo con nº y el nombre con node delante del nombre archivo .js y copio por consola y pego en archivo nombres2.txt"
        ./'prueba-nombres-menu-BUENO copy.sh'
        

        read foo
        ;;
    4) exit 0 ;;
    #Alerta
    *)
        echo "Opcion invalida..."
        sleep 1
        ;;
    esac
done
