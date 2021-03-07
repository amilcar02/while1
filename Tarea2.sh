#!/bin/bash
menu() {
 clear
echo "****************************"
echo "************MENU************" 
echo "1.Para Crear Archivo        "
echo "2.Para Eliminar Archivo     "
echo "3.Para Salir                "
echo "****************************"  
echo "Escoja la opcion" 
read opcion
return $opcion
}
creararchivo(){
        clear
        echo "****************************"
        echo "*******Crear Archivo********" 
        echo "****************************"
        echo "Ingrese nombre del Archivo"
        read archivo
        echo "Ecriba la ruta del archivo"
        read ruta

        touch $HOME/$ruta/$archivo
        echo "Directorio Creado Correctamente, espere un momento Por Favor..."

}

eliminararchivo(){
    clear
            echo "****************************"
            echo "*******Crear Archivo********" 
            echo "****************************"
            echo "Ingrese nombre del Archivo"
            read eliminar
            echo "Ecriba la ruta del archivo"
            read rut

           
            rm $HOME/$rut/$eliminar
            echo "La Carpeta se Eliminò, espere un momento por favor..."

}

clear
menu

while [ "$opcion" != 3 ]
do
    case $opcion in
    1)
       creararchivo
       ;;

       2)
            eliminararchivo
            ;;

           3) exit
           ;;
           
       *)
       echo "opcion no valida, espere un momento por favor..."
       ;;
       esac

       sleep 1.5s

menu
done

