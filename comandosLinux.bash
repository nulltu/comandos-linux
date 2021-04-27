#Comando mas usados en linux
#---------------------------

#Listar archivos/directorios
ls
#Listar archivos ocultos + peso del archivo
ls -alh

#Copiar archivos/directorios
#Ejemplo de copiar archivos en un directorio: copiar archivo readme.txt --> directorio documents/
cp readme.txt documents/
#Ejemplo como copiar el mismo archivo con una copia del mismo
cp readme.txt readme.txt.copia
#Ejemplo de copiar un directorio dentro de otro directorio:
# -a una suma de varios argumentos incluido el -r para copiar de manera recursiva
cp -a myProyect/ documents/

#Borrar un archivo
rm documents/readme.txt
#Si estoy en la carpeta solo:
rm readme.txt
#Mover un directorio de manera recursiva forzado
rm -rf proyects/myProyect

#Mover un archivo
mv readme.txt documents/
#Mover un directorio dentro de otro 
mv myProyect/ documents/

#Sincronizar archivos/directorios - Si el archivo esxiste no copia (recomendable en backups, o cuando no
#sabemos si el destino ya tiene el contenido que queremos copiar) 
#con v muestra la porgresion de la copia
rsync -av images/ images2

#Crear archivos
touch archivo.txt
> archivo.txt #Escribiendo de esta manera se obtiene el mismo resultado

#Ver espacio utilizado por el directorio
#con s me suma el contenido 
#con h hace descriptivo el valor (MB, KB, etc)
du -sh /var/lib
#Si le agregamos un * al final nos mostrara el espacio por cada uno de los archivos en el directorio
du -sh /var/lib/*

#Mostrar informacion de un archivo
stat readme.txt

#Comprimir un directorio
zip -r proyects.zip proyects
#Descomprimir zip
unzip proyects.zip
#ver contenido de un zip sin desconprimirlo
zipinfo proyects.zip

#Para ver un arbol de todos los directorios desde donde nos encontramos 
tree

#Buscar archivos/directorios
find
#Buscar en el directorio donde estoy .
#-mtime +5 modificados hace mas de 5 dias
find . -mtime =5
#Buscar por el nombre
#-i que no se fije si son mayusculas o minusculas
find . -iname 'archivo*'
#Buscar por nombre y una vez encontrado borrar los archivos encontrados.
find . -iname 'archivo*' -delete

#Mostrar calendario
cal
#Mostrar calendario con argumentos
cal 11 2020

#Ver fecha actual
date
#Basado en el dia actual sumarle 7 dias
date -d "+7 days"

#calculadora simple
bc

#Mostrar procesos que estan corriendo
#ps los ordena
ps fax 
#Matar un proceso
#6879 es el id de proceso, ingresar el que necesites matar
kill 6879
#Matar procesos por nombre 
#Va a buscar todos los procesos con nombre dhclient y los va a matar
killall dhclient

#Request HTTP via comando
curl https://google.com
#Mostrar tu ip publica
curl ifconfig.me

#Mostrar contenido de un archivo
cat archivo.txt

#filtar texto
#ver lineas que contengan rusbent dentro del archivo readme.txt
grep rusbent readme.txt
#ver contenido de readme.txt filtrando las lineas que contengan rusbent 
#se pueden concatenar con mas |
cat readme.txt | grep rusbent
#Mostrar todas las lineas que no contengan rusbent
grep -v rusbent readme.txt

#Ver espacio de disco en el servidor
df -h

#Mostrar procesos y uso de sus recursos
top

#Mostrar historial de comandos utilizados en la terminal
history 

#Accesos rapidos
#ir pasando por history desde el mas actual hacia el mas viejo.
ctrl + r
