# Encontrar la expresión regular de Regex que devuelve:

# Las ocurrencias de la letra s.

# grep -ic -E "s" ./regex/oraciones.txt

# Las ocurrencias de un caracter, seguido de la letra o (ej. to).

# grep -ic -E "[a-z]o" ./regex/oraciones.txt

# Todos los dígitos en el archivo.

# grep -E "[1-9]" ./regex/oraciones.txt

# Las ocurrencias del punto (.).

# grep -ic -E "\." ./regex/oraciones.txt

# Las ocurrencias de la letra c al comienzo de la palabra.

# grep -i -E " c" ./regex/oraciones.txt

# Las palabras que comienzan con la letra p (no es necesario incluir las mayúsculas).

# grep -E " p" ./regex/oraciones.txt






# Se tiene el archivo contraseñas.csv, el cual almacena las contraseñas de distintos usuarios en una plataforma. La estructura es nombre_usuario,contraseña. Se pide extraer, del archivo:

# Los nombres de usuario que contienen números.

# cat regex/usuarios_y_contrasenas.csv | grep -oE "^[^,]*[0-9][^,]*," | sed "s/,//"

# Los nombres de usuario con al menos un guión bajo (_).

# grep -oE "^[^,]*\_[^,]*," regex/usuarios_y_contrasenas.csv | sed "s/,//"

# Las contraseñas alfanúmericas.

# grep -oE ",\w*[0-9]+\w*" regex/usuarios_y_contrasenas.csv | sed "s/,//"

# Los nombres de usuario alfanuméricos.

# grep -oE "^[A-Za-z0-9]+," regex/usuarios_y_contrasenas.csv | sed "s/,//"

# Las contraseñas que comienzen y terminen con el mismo caracter.

# caracter_inicial=$(grep -oE ",\w" regex/usuarios_y_contrasenas.csv | sed "s/,//")
# # grep -oE ",$caracter_inicial\w+$$caracter_inicial" regex/usuarios_y_contrasenas.csv 

# for a in $caracter_inicial; do
#     if [ $(grep -oE ",$a\w+$a" regex/usuarios_y_contrasenas.csv) ]; then
#          grep -oE ",$a\w+$a" regex/usuarios_y_contrasenas.csv | sed "s/,//"
#     fi
# done

# grep -oE ",(.).*\1$" regex/usuarios_y_contrasenas.csv | sed "s/,//"

# Las contraseñas con exactamente 14 caracteres (de cualquier tipo).

# grep -oE ",.{14}" regex/usuarios_y_contrasenas.csv | sed "s/,//"


# Las contraseñas seguras; son las que contienen al menos:
# 1 letra minúscula
# 1 letra mayúscula
# 1 número
# 1 caracter especial (@$!%*?&#)

grep -E ",[^ ]*[a-z]" regex/usuarios_y_contrasenas.csv | grep -E ",[^ ]*[A-Z]" | grep -E ",[^ ]*[0-9]" | grep -E ",[^ ]*[@\$!%\*\?&#]" | grep -oE ",[^,]+$" | sed 's/,//'