clear
echo -e "Escribe el Título del Tracker que deseas crear:\n\n"
read TRACKER

clear
echo -e "Escribe la Fecha de Inicio y Fecha Final, con el Formato: AÑO-MES-DIA\n\n Ejemplo:\n 2018-01-01 2018-01-31\n"
read FECHA_INICIO FECHA_FINAL

clear
echo -e "Escribe el título de cada columna, separado por comas ",". \n\n Ejemplo:\n Fecha,Peso,Ejercicio\n"
read CABECERA

clear
echo -e "Escribe tantas comas como columnas quieres que se añadan tras la columna de la fecha. \n\n Ejemplo: \n ,,\n"
read COMAS


echo $CABECERA > temp.org

curr="$FECHA_INICIO"
while true; do

     echo $(date -d $curr +'%m-%d-%Y %A')
     echo "$(date -d $curr +'%m%d')$COMAS" >> temp.org
    [ "$curr" \< "$FECHA_FINAL" ] || break
    curr=$( date +%Y-%m-%d --date "$curr +1 day" )
    
done

sed -e 's/^/| /' -e 's/,/,| /g' -e 's/$/,|/' temp.org | column -t -s, > tracker.org


echo "* $TRACKER" > temp
cat tracker.org >> temp 
mv temp tracker.org


cat tracker.org
rm temp.org


