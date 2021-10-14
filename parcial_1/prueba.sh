#!/bin/bash
# Bash Menu Script Example

PS3='Elija donde crear una copia de seguridad '
options=("Opcion 1:/var/www/html/so/<a.agueero>/" "Opcion 2:/home/mz/so2021/<a.agueero>/" "Opcion 3:/home/mz/so2021/compartido/" "Ninguno")
select opt in "${options[@]}"
do
    case $opt in
        "Opcion 1:/var/www/html/so/<a.agueero>/")
            echo "escogiste 1"
            echo "copy index.html to /var/www/html/so/<a.agueero>/ `cp index.html /var/www/html/so/a.agueero/`" >> output.txt
            echo "copy script_index.sh to /var/www/html/so/<a.agueero>/ `cp script_index.sh /var/www/html/so/a.agueero/`" >> output.txt
            ;;
        "Opcion 2:/home/mz/so2021/<a.agueero>/")
            echo "escogiste 2"
            echo "copy index.html to /home/mz/so2021/<a.agueero>/ `cp index.html /home/mz/so2021/a.agueero/`" >> output.txt
            echo "copy script_index.sh to /home/mz/so2021/<a.agueero>/ `cp script_index.sh /home/mz/so2021/a.agueero/`" >> output.txt

            ;;
        "Opcion 3:/home/mz/so2021/compartido/")
            echo "escogiste 3"
            echo "copy index.html to /home/mz/so2021/compartido/ `cp index.html /home/mz/so2021/compartido/`" >> output.txt
            echo "copy script_index.sh to /home/mz/so2021/compartido/ `cp script_index.sh /home/mz/so2021/compartido/`" >> output.txt

            ;;
        "Ninguno")
            break
            ;;
        *) echo "opcion invalida $REPLY";;
    esac
done
