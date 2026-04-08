#!/bin/bash


#Ejercicio 10: Calcular tipo de triangulo

#read -p "Ingrese uno de los lados del triangulo: " lado1
#read -p "Ingrese uno de los lados del triangulo: " lado2
#read -p "Ingrese uno de los lados del triangulo: " lado3

#if [ $lado1 -eq $lado2 ] && [ $lado1 -eq $lado3 ]; then 
	#echo "Es equilatero"
#elif [ $lado1 -ne $lado2 ] && [ $lado1 -ne $lado3 ] && [ $lado2 -ne $lado3 ]; then
	#echo "Es escaleno"
#else
	#echo "Es isoceles"
#fi


#Ejercicio 11 "Funciones de suma, resta, division y multi"

#read -p "Ingrese un numero entero: " num1
#read -p "Ingrese un numero entero: " num2

#suma(){
	#local suma=$(($num1 + $num2))
	#echo $suma
#} 

#multiplicacion(){
	#local multi=$(($num1 * $num2))
	#echo $multi
#} 

#resta(){
	#local resta=$(($num1 - $num2))
	#echo $resta
#} 

#division(){
	#local div=$(($num1 / $num2))
	#echo $div 
#} 

#echo $(suma)
#echo $(resta)
#echo $(multiplicacion)
#echo $(division)

#Ejercicio 12: Crear un script de Bash que imprima los primeros n números naturales. Solicitar al usuario el ingreso de n.

#read -p "Ingresá un número n: " n

#echo "Los primeros $n números naturales son:"
#for (( i=1; i<=n; i++ )); do
    #echo "$i"
#done

#Ejercicio 13: Crear un script de Bash que solicite el ingreso de un número n y que luego calcule su factorial.


#read -p "Ingresá un número n: " num
#factorial=1

#for (( n=1; n<=$num; n++ )); do
	#factorial=$(($factorial * $n))
#done

#echo $factorial

#Ejercicio 14: Crear un script de Bash que solicite al usuario el ingreso de un número par. En caso de que sea impar, solicitarlo nuevamente

#read -p "Ingresá un número par: " num

#while [ $(($num % 2)) -ne 0 ]; do
	#read -p "Ingresá un número par: " num
#done

#Ejercicio 15 Crear un script de Bash que solicite un número que representa un día de la semana, imprimir por pantalla de que día se trata. En caso de que el número esté fuera de rango, solicitarlo nuevamente.

#read -p "Ingresá un número de dia: " num

#while [ $num -gt 7 ]; do
#	read -p "Ingresá un número de dia: " num
#done

#case $num in
#	1) echo "Es Lunes";;
#	2) echo "Es Martes";;
#	3) echo "Es Miercoles";;
#	4) echo "Es Jueves";;
#	5) echo "Es Viernes";;
#	6) echo "Es Sabado";;
#	7) echo "Es Domingo";;
#esac

#Crear un script de Bash que reciba números naturales y que luego los imprima por pantalla (la cantidad de números ingresados puede variar).

#echo "Los números que ingresaste por parámetro son:"

#for num in "$@"; do
 #   echo "$num"
#done

# Crear un script de Bash que reciba números de DNI y ordene a las personas de menor a mayor edad. Imprimir por pantalla los documentos ordenados. (la cantidad de números de DNI puede variar).


#echo "DNIs ordenados de menor edad a mayor edad (Mayor DNI a Menor DNI):"

# printf "%s\n" "$@" agarra todos los parámetros y los pone uno abajo del otro.
# Luego la tubería "|" se los pasa a sort.
#printf "%s\n" "$@" | sort -nr

#Ejercicio 18. Crear un script de Bash que reciba como parámetros dos strings “contraseña” y “contraseña ingresada” e indique si la clave ingresada es correcta o incorrecta.

#if [ $1 == $2 ]; then
#	echo "ES IGUAL"
#else 
#	echo "ES incorrecta"
#fi

#Ejercicio 19 Crear un script de Bash que imprima la fecha actual en un archivo llamado “fecha.txt”.

#date > fecha.txt

#Ejercicio 20. Crear un script de Bash que imprima el nombre del directorio actual en un archivo llamado “actual.txt”.

#pwd > actual.txt

#Ejercicio 21. Crear un script de Bash que solicite al usuario un número natural n y cree n cantidad de archivos con los nombres archivo1, archivo2, etc. Escribir en todos los archivos el nombre del usuario actual.

#read -p "Ingrese un numero natural n: " num

#if [ $num -ge 1 ]; then
#	for (( n=1; n<=num; n++ )); do
#		echo $USER > archivo$n.txt
#		echo "Archivo $n creado"
#	done
#fi

#Ejercicio 22. Crear un script de Bash que reciba como parámetro los nombres de dos archivos y una sus contenidos en uno nuevo llamado “concatenados.txt”.

#archivos_concatenados=$(cat $1 $2)
#echo "Archivos concatenados..."
#echo $archivos_concatenados > concatenados.txt
#echo "concatenados.txt fue creado exitosamente"

#Ejercicio 22. Crear un script de Bash que solicite al usuario un número natural n y cree n cantidad de carpetas con los nombres carpeta1, carpeta2, etc.

#read -p "Ingrese un numero natural n: " num

#for (( n=1; n<=num; n++)); do
#	mkdir carpeta$n
#	echo "Carpeta $n creada exitosamente"
#done

#24. Crear un script de Bash que solicite al usuario un número natural n e imprima en un archivo llamado “primos.txt” todos los números primos existentes hasta n.

# read -p "Ingrese un numero natural: " num

# for (( n=2; n<=num; n++)); do
# 	if [ $n -eq 2 ]; then
# 		echo $n > primos.txt
# 	fi

# 	for (( i=2; i<$n; i++ )); do
# 		if [ $((n % i)) -eq 0 ]; then
# 			break;
# 		fi
# 		if [ $i -eq $((n-1)) ]; then
# 			echo $n >> primos.txt
# 		fi
# 	done

# done


#25. Crear un script de Bash que imprima en un archivo llamado “ordenados.txt” los nombres de todos los archivos del directorio actual ordenados según sus tamaños.

# ls -l | sort -r > ordenados.txt


#26.Crear un script de Bash que solicite al usuario los siguientes datos: -Nombre -Apellido -Legajo -Materia preferida Luego imprimir en un archivo “datos_alumno.txt” toda la información.

read -p "Ingrese su nombre: " nombre
read -p "Ingrese su apellido: " apellido
read -p "Ingrese su legajo: " legajo
read -p "Ingrese su materia preferida: " mat_preferida

for campo in $nombre $apellido $legajo $mat_preferida; do
	echo $campo >> datos_alumno.txt 
done

###################################################################

# Forma 1: Entre paréntesis
# frutas=("manzana" "banana" "naranja")

# # Forma 2: Asignar índices
# colores[0]="rojo"
# colores[1]="verde"
# colores[2]="azul"

# # Forma 3: Desde un comando
# archivos=($(ls *.txt))

# frutas+=("kiwi" "Toronja")
# echo ${frutas[*]}

