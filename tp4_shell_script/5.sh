#!/bin/bash
#script que muestre en pantalla los procesos que se estan ejecutando y permita introducir el PID para matar algun proceso en ejecucion
ps -ef
echo "ingrese el PID del proseso a matar"
read proces_id
kill -9 $proces_id