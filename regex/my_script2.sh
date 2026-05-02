# Encontrar la expresión regular de Regex que devuelve:

#1. Las ocurrencias de la letra s.

# grep -o "s" oraciones.txt

#2. Las ocurrencias de un caracter, seguido de la letra o (ej. to).

# grep -Eo ".o" oraciones.txt

#3. Todos los dígitos en el archivo.

# grep -Eo "[0-9]" oraciones.txt

#4. Las ocurrencias del punto (.).

# grep -Eo "\." oraciones.txt

#5. Las ocurrencias de la letra c al comienzo de la palabra.

# grep -io -E "\sc[a-z]+\s" oraciones.txt

#6. Las palabras que comienzan con la letra p (no es necesario incluir las mayúsculas).

# grep -o -E "\sp[a-z]+\s" oraciones.txt

# ¿Qué devuelven las siguientes expresiones regulares?

# 7. ^L
# Todas las lineas que empiezen con L
# grep "^L" oraciones.txt
# 8. !$
# Devuelve las lineas que terminan con !
# grep "!$" oraciones.txt
# 9.  (espacio)
# Devuelve las lineas con espacio
# grep " " oraciones.txt
# 10. [A-Z1-3]
# Devuelve todas las lineas que tengan una letra de la A a la Z mayuscula o un numero del 1 al 3
# grep "[A-Z1-3]" oraciones.txt


# Se tiene el archivo contraseñas.csv, el cual almacena las contraseñas de distintos usuarios en una plataforma. La estructura es nombre_usuario,contraseña. Se pide extraer, del archivo:

# 11. Los nombres de usuario que contienen números.

# grep -Eo "\w*[0-9]+\w*" contrasenas.csv

# 12. Los nombres de usuario con al menos un guión bajo (_).

# grep -Eo "\w*\_+\w*" contrasenas.csv

# 13. Las contraseñas alfanúmericas.

# grep -Po "(?<=,)[a-zA-Z0-9]+$" contrasenas.csv 

# 14. Los nombres de usuario alfanuméricos.

# grep -Eo "^\w+" contrasenas.csv

# 15. Las contraseñas que comienzen y terminen con el mismo caracter.
# grep -P -o "(?<=,)(.).*\1$" contrasenas.csv

# 16. Las contraseñas con exactamente 14 caracteres (de cualquier tipo).

# grep -P -o "(?<=,).{14}$" contrasenas.csv


#17.  Las contraseñas seguras; son las que contienen al menos:
# 1 letra minúscula
# 1 letra mayúscula
# 1 número
# 1 caracter especial (@$!%*?&#)

# grep -P -o "(?<=,)(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[@$!%*?&#]).+$" contrasenas.csv