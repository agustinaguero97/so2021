#!/bin/bash
#script que tras introducir una letra, me devuelva el listado de usuarios del sistema que inicien con dicha letra
echo "ingrese una letra"
read letra
w | grep ^$letra -n
