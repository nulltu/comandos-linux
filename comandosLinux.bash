#Listar archivos/directorios
ls
#Lista con archivos ocultos + peso del archivo
ls -alh
#Copiar archivos/directorios
#Ejemplo de copiar archivos en un directorio:
cp readme.txt documents/
#Ejemplo de copiar un directorio dentro de otro directorio:
cp -a myProyect/ documents/
#Borrar un archivo
rm documents/readme.txt
#Si estoy en la carpeta solo:
rm readme.txt
#Mover un directorio de manera recursiva forzado
rm -rf proyects/myProyect
#Mover un archvo
mv readme.txt documents/

