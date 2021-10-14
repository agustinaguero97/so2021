#!/bin/bash
#calculadora basica(+,-,*,/)
echo "ingrese primer numero "
read num1
echo "ingrese segundo numero"
read num2
PS3='elija la operacion a realizar '
options=("+" "-" "*" "/" "salir")
select opt in "${options[@]}"
do
    case $opt in
        "+")
            echo " $num1+$num2" $((num1+num2))
            ;;
        "-")
            echo " $num1-$num2:" $((num1-num2))
            ;;
        "*")
            echo " $num1*$num2:" $((num1*num2))
            ;;
        "/")
            echo " $num1/$num2:" $((num1/num2))
            ;;
        "salir")
            break
            ;;
        *) echo "opcion invalida $REPLY";;
    esac
done
