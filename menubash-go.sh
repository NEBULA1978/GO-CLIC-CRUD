#!/bin/bash

while true
do
    echo "¿Qué acción deseas realizar?"
    echo "1. Listar tareas"
    echo "2. Agregar tarea"
    echo "3. Completar tarea"
    echo "4. Eliminar tarea"
    echo "5. Salir"

    read opcion

    case $opcion in
        1)
            go run main.go list
            ;;
        2)
            echo "Nombre de la tarea:"
            read tarea
            go run main.go add "$tarea"
            ;;
        3)
            echo "¿Qué tarea has completado?"
            read id
            go run main.go complete "$id"
            ;;
        4)
            echo "¿Qué tarea deseas eliminar?"
            read id
            go run main.go delete "$id"
            ;;
        5)
            echo "Adiós!"
            exit 0
            ;;
        *)
            echo "Opción inválida. Por favor, elige una opción del menú."
            ;;
    esac
done

# El código anterior es un ejemplo de cómo crear un menú en Bash utilizando un bucle while y la estructura de control case para ejecutar diferentes opciones. El menú se basa en un programa CLI de Go que administra una lista de tareas.

# El menú tiene cinco opciones:

# Listar tareas - Muestra una lista de todas las tareas en la lista.
# Agregar tarea - Agrega una nueva tarea a la lista.
# Completar tarea - Marca una tarea como completada en la lista.
# Eliminar tarea - Elimina una tarea de la lista.
# Salir - Termina el programa.

# Cada vez que el usuario elige una opción, se ejecuta un comando de Go correspondiente para realizar la tarea solicitada. Si el usuario elige una opción inválida, el menú muestra un mensaje de error y vuelve a solicitar la entrada del usuario.

# Este ejemplo es útil para comprender cómo se puede crear un menú interactivo en Bash que interactúa con un programa de Go en segundo plano para administrar una lista de tareas.