#!/bin/bash
#hay que darle a la carpeta a.agueero chmod 755
clear
auch saludo.txt
echo "hola!" >> saludo.txt
echo "" > output.txt
echo "hora y ejecucion del script: `date`" >>  output.txt
echo "_________________________________________________________" >> output.txt
echo "auar: `whoami`"  >> output.txt
echo "_________________________________________________________" >> output.txt
echo "capacidad utilizada de discos rigidos:" >> output.txt
echo "`df -h`" >> output.txt
echo "_________________________________________________________" >> output.txt
echo "cantidad de procesadores del servidor: `nproc --all` " >> output.txt
echo "_________________________________________________________" >> output.txt
echo "lista de procesos del servidor:" >> output.txt
echo "`ps`" >> output.txt
echo "_________________________________________________________" >> output.txt
echo "existe el archivo saludo.txt en esta carpeta" >>output.txt
echo "" >> output.txt
echo "`ls` " >> output.txt
echo "el contenido de saludo.txt es: `cat saludo.txt`" >> output.txt
echo "" >> output.txt
echo "eliminando saludo.txt:  `rm saludo.txt`" >> output.txt
echo "`ls`" >> output.txt
echo "_________________________________________________________" >> output.txt
if [ `who | wc -l` -gt 1 ];then
echo "hay varios:  `who`" >> output.txt
else
echo "solo esay yo: `who`" >> output.txt
fi

#da los permisos al usuario y grupo (no se si funciona)
chown www-data:www-data index.html
chown www-data:www-data script_index.sh
chown www-data:www-data output.txt


#selector para crear una copia de seguridad (no se si funciona)
PS3='Elija donde crear una copia de seguridad '
options=("Opcion 1:/var/www/html/so/<a.agueero>/" "Opcion 2:/home/mz/so2021/<a.agueero>/" "Opcion 3:/home/mz/so2021/compartido/" "Ninguno")
select opt in "${options[@]}"
do
    case $opt in
        "Opcion 1:/var/www/html/so/<a.agueero>/")
            echo "escogiste 1"
            echo "copiando index.html a /var/www/html/so/<a.agueero>/ `cp index.html /var/www/html/so/a.agueero/`" >> output.txt
            echo "copiando script_index.sh a /var/www/html/so/<a.agueero>/ `cp script_index.sh /var/www/html/so/a.agueero/`" >> output.txt
            echo "copiando output.txt a /var/www/html/so/<a.agueero>/ `cp output.txt /var/www/html/so/a.agueero/`"
            ;;
        "Opcion 2:/home/mz/so2021/<a.agueero>/")
            echo "escogiste 2"
            echo "copiando index.html a /home/mz/so2021/<a.agueero>/ `cp index.html /home/mz/so2021/a.agueero/`" >> output.txt
            echo "copiando script_index.sh a /home/mz/so2021/<a.agueero>/ `cp script_index.sh /home/mz/so2021/a.agueero/`" >> output.txt
            echo "copiando output.txt a /home/mz/so2021/<a.agueero>/ `cp output.txt /home/mz/so2021/a.agueero/`"
            ;;
        "Opcion 3:/home/mz/so2021/compartido/")
            echo "escogiste 3"
            echo "copiando index.html a /home/mz/so2021/compartido/ `cp index.html /home/mz/so2021/compartido/`" >> output.txt
            echo "copiando script_index.sh a /home/mz/so2021/compartido/ `cp script_index.sh /home/mz/so2021/compartido/`" >> output.txt
            echo "copiando output.txt a /home/mz/so2021/compartido/ `cp output.txt /home/mz/so2021/compartido/`"
            ;;
        "Ninguno")
            break
            ;;
        *) echo "opcion invalida $REPLY";;
    esac
done



echo "script finalizado  ados los resultados terminaron en un output.txt el cual lo utiliza el index.html para mostrarlo"