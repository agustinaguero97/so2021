#!/bin/bash
#script que compruebe si estamos a dia 29 del mes. de ser asi mostrar el texto "bien es 29...hoy comemos ñoquis"
if [[ `date +%d` -eq 29 ]]
then
    echo "es 29 hoy comemos ñoquis"
else
    echo "no"
fi