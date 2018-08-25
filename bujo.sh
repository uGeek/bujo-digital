echo "Introdueix l'any: "
read ANO



echo "#+TITLE: Bullet Journal Digital
#+AUTHOR: Angel, Alfons
#+DATE: $ANO
#+LANGUAGE: ca
#+SEQ_TODO: TODO(t) NEXT(n) WAIT(w) | CANCELLED (c) DONE(d)
#+INFOJS_OPT: view:t toc:t ltoc:t mouse:underline buttons:0 path:https://ugeek.github.io/style-css-org-mode/org-info.min.js
#+HTML_HEAD: <link rel="stylesheet" type="text/css" href="https://ugeek.github.io/style-css-org-mode/bjm.css" />
#+STARTUP: inlineimages" > bujo-$ANO.org


echo "* INDEX" >> bujo-$ANO.org

echo "** CLAUS 
*** Tasca Normal 
*** *Tasca Important* 
*** / Tasca Començada 
*** > Tasca que ve d'Altre Dia 
*** < Tarea Migra a Algre Dia 
*** +Fet+
*** # Nota" >> bujo-$ANO.org



echo "* FUTURE LOG" >> bujo-$ANO.org

echo  "$(cal 2 -3 $ANO)" >> bujo-$ANO.org
echo  " " >> bujo-$ANO.org
echo  "$(cal 5 -3 $ANO)" >> bujo-$ANO.org
echo  " " >> bujo-$ANO.org
echo  "$(cal 8 -3 $ANO)" >> bujo-$ANO.org
echo  " " >> bujo-$ANO.org
echo  "$(cal 11 -3 $ANO)" >> bujo-$ANO.org
echo  " " >> bujo-$ANO.org



echo "* AGENDA" >> bujo-$ANO.org


ENERO=$(cal 1 $ANO | awk 'NF {DAYS = $NF}; END {print DAYS}')
FEBRERO=$(cal 2 $ANO | awk 'NF {DAYS = $NF}; END {print DAYS}')
MARZO=$(cal 3 $ANO | awk 'NF {DAYS = $NF}; END {print DAYS}')
ABRIL=$(cal 4 $ANO | awk 'NF {DAYS = $NF}; END {print DAYS}')
MAYO=$(cal 5 $ANO | awk 'NF {DAYS = $NF}; END {print DAYS}')
JUNIO=$(cal 6 $ANO | awk 'NF {DAYS = $NF}; END {print DAYS}')
JULIO=$(cal 7 $ANO | awk 'NF {DAYS = $NF}; END {print DAYS}')
AGOSTO=$(cal 8 $ANO | awk 'NF {DAYS = $NF}; END {print DAYS}')
SEPTIEMBRE=$(cal 9 $ANO | awk 'NF {DAYS = $NF}; END {print DAYS}')
OCTUBRE=$(cal 10 $ANO | awk 'NF {DAYS = $NF}; END {print DAYS}')
NOVIEMBRE=$(cal 11 $ANO | awk 'NF {DAYS = $NF}; END {print DAYS}')
DICIEMBRE=$(cal 12 $ANO | awk 'NF {DAYS = $NF}; END {print DAYS}')

###############

FECHA_INICIO=$ANO-01-01
FECHA_FINAL=$ANO-01-$ENERO

echo "** GENER" >> bujo-$ANO.org

curr="$FECHA_INICIO"
while true; do

     echo $(date -d $curr +'%d %A')
     echo "*** $(date -d $curr +'%d %A')" >> bujo-$ANO.org
    [ "$curr" \< "$FECHA_FINAL" ] || break
    curr=$( date +%Y-%m-%d --date "$curr +1 day" )
    
done


################

FECHA_INICIO=$ANO-02-01
FECHA_FINAL=$ANO-02-$FEBRERO

echo "** FEBRER" >> bujo-$ANO.org

curr="$FECHA_INICIO"
while true; do

     echo $(date -d $curr +'%d %A')
     echo "*** $(date -d $curr +'%d %A')" >> bujo-$ANO.org
    [ "$curr" \< "$FECHA_FINAL" ] || break
    curr=$( date +%Y-%m-%d --date "$curr +1 day" )
    
done


################

FECHA_INICIO=$ANO-03-01
FECHA_FINAL=$ANO-03-$MARZO

echo "** MARÇ" >> bujo-$ANO.org

curr="$FECHA_INICIO"
while true; do

     echo $(date -d $curr +'%d %A')
     echo "*** $(date -d $curr +'%d %A')" >> bujo-$ANO.org
    [ "$curr" \< "$FECHA_FINAL" ] || break
    curr=$( date +%Y-%m-%d --date "$curr +1 day" )
    
done

################

FECHA_INICIO=$ANO-04-01
FECHA_FINAL=$ANO-04-$ABRIL

echo "** ABRIL" >> bujo-$ANO.org

curr="$FECHA_INICIO"
while true; do

     echo $(date -d $curr +'%d %A')
     echo "*** $(date -d $curr +'%d %A')" >> bujo-$ANO.org
    [ "$curr" \< "$FECHA_FINAL" ] || break
    curr=$( date +%Y-%m-%d --date "$curr +1 day" )
    
done


################

FECHA_INICIO=$ANO-05-01
FECHA_FINAL=$ANO-05-$MAYO

echo "** MAIG" >> bujo-$ANO.org

curr="$FECHA_INICIO"
while true; do

     echo $(date -d $curr +'%d %A')
     echo "*** $(date -d $curr +'%d %A')" >> bujo-$ANO.org
    [ "$curr" \< "$FECHA_FINAL" ] || break
    curr=$( date +%Y-%m-%d --date "$curr +1 day" )
    
done

################

FECHA_INICIO=$ANO-06-01
FECHA_FINAL=$ANO-06-$JUNIO

echo "** JUNY" >> bujo-$ANO.org

curr="$FECHA_INICIO"
while true; do

     echo $(date -d $curr +'%d %A')
     echo "*** $(date -d $curr +'%d %A')" >> bujo-$ANO.org
    [ "$curr" \< "$FECHA_FINAL" ] || break
    curr=$( date +%Y-%m-%d --date "$curr +1 day" )
    
done


################

FECHA_INICIO=$ANO-07-01
FECHA_FINAL=$ANO-07-$JULIO

echo "** JULIOL" >> bujo-$ANO.org

curr="$FECHA_INICIO"
while true; do

     echo $(date -d $curr +'%d %A')
     echo "*** $(date -d $curr +'%d %A')" >> bujo-$ANO.org
    [ "$curr" \< "$FECHA_FINAL" ] || break
    curr=$( date +%Y-%m-%d --date "$curr +1 day" )
    
done



################

FECHA_INICIO=$ANO-08-01
FECHA_FINAL=$ANO-08-$AGOSTO

echo "** AGOST" >> bujo-$ANO.org

curr="$FECHA_INICIO"
while true; do

     echo $(date -d $curr +'%d %A')
     echo "*** $(date -d $curr +'%d %A')" >> bujo-$ANO.org
    [ "$curr" \< "$FECHA_FINAL" ] || break
    curr=$( date +%Y-%m-%d --date "$curr +1 day" )
    
done



################

FECHA_INICIO=$ANO-09-01
FECHA_FINAL=$ANO-09-$SEPTIEMBRE

echo "** SEPTEMBRE" >> bujo-$ANO.org

curr="$FECHA_INICIO"
while true; do

     echo $(date -d $curr +'%d %A')
     echo "*** $(date -d $curr +'%d %A')" >> bujo-$ANO.org
    [ "$curr" \< "$FECHA_FINAL" ] || break
    curr=$( date +%Y-%m-%d --date "$curr +1 day" )
    
done


################

FECHA_INICIO=$ANO-10-01
FECHA_FINAL=$ANO-10-$OCTUBRE

echo "** OCTUBRE" >> bujo-$ANO.org

curr="$FECHA_INICIO"
while true; do

     echo $(date -d $curr +'%d %A')
     echo "*** $(date -d $curr +'%d %A')" >> bujo-$ANO.org
    [ "$curr" \< "$FECHA_FINAL" ] || break
    curr=$( date +%Y-%m-%d --date "$curr +1 day" )
    
done



################

FECHA_INICIO=$ANO-11-01
FECHA_FINAL=$ANO-11-$NOVIEMBRE

echo "** NOVEMBRE" >> bujo-$ANO.org

curr="$FECHA_INICIO"
while true; do

     echo $(date -d $curr +'%d %A')
     echo "*** $(date -d $curr +'%d %A')" >> bujo-$ANO.org
    [ "$curr" \< "$FECHA_FINAL" ] || break
    curr=$( date +%Y-%m-%d --date "$curr +1 day" )
    
done



################

FECHA_INICIO=$ANO-12-01
FECHA_FINAL=$ANO-12-$DICIEMBRE

echo "** DESEMBRE" >> bujo-$ANO.org

curr="$FECHA_INICIO"
while true; do

     echo $(date -d $curr +'%d %A')
     echo "*** $(date -d $curr +'%d %A')" >> bujo-$ANO.org
    [ "$curr" \< "$FECHA_FINAL" ] || break
    curr=$( date +%Y-%m-%d --date "$curr +1 day" )
    
done




#################################################################################################################

#################################################################################################################

#################################################################################################################

#################################################################################################################

#################################################################################################################


echo "* DAILY LOG" >> bujo-$ANO.org



###############

FECHA_INICIO=$ANO-01-01
FECHA_FINAL=$ANO-01-$ENERO

echo "** GENER" >> bujo-$ANO.org

curr="$FECHA_INICIO"
while true; do

     echo $(date -d $curr +'%d de %B del %Y, %A')
     echo "*** $(date -d $curr +'%d de %B del %Y, %A')" >> bujo-$ANO.org
    [ "$curr" \< "$FECHA_FINAL" ] || break
    curr=$( date +%Y-%m-%d --date "$curr +1 day" )
    
done


################

FECHA_INICIO=$ANO-02-01
FECHA_FINAL=$ANO-02-$FEBRERO

echo "** FEBRER" >> bujo-$ANO.org

curr="$FECHA_INICIO"
while true; do

     echo $(date -d $curr +'%d de %B del %Y, %A')
     echo "*** $(date -d $curr +'%d de %B del %Y, %A')" >> bujo-$ANO.org
    [ "$curr" \< "$FECHA_FINAL" ] || break
    curr=$( date +%Y-%m-%d --date "$curr +1 day" )
    
done


################

FECHA_INICIO=$ANO-03-01
FECHA_FINAL=$ANO-03-$MARZO

echo "** MARÇ" >> bujo-$ANO.org

curr="$FECHA_INICIO"
while true; do

     echo $(date -d $curr +'%d de %B del %Y, %A')
     echo "*** $(date -d $curr +'%d de %B del %Y, %A')" >> bujo-$ANO.org
    [ "$curr" \< "$FECHA_FINAL" ] || break
    curr=$( date +%Y-%m-%d --date "$curr +1 day" )
    
done

################

FECHA_INICIO=$ANO-04-01
FECHA_FINAL=$ANO-04-$ABRIL

echo "** ABRIL" >> bujo-$ANO.org

curr="$FECHA_INICIO"
while true; do

     echo $(date -d $curr +'%d de %B del %Y, %A')
     echo "*** $(date -d $curr +'%d de %B del %Y, %A')" >> bujo-$ANO.org
    [ "$curr" \< "$FECHA_FINAL" ] || break
    curr=$( date +%Y-%m-%d --date "$curr +1 day" )
    
done


################

FECHA_INICIO=$ANO-05-01
FECHA_FINAL=$ANO-05-$MAYO

echo "** MAIG" >> bujo-$ANO.org

curr="$FECHA_INICIO"
while true; do


     echo $(date -d $curr +'%d de %B del %Y, %A')
     echo "*** $(date -d $curr +'%d de %B del %Y, %A')" >> bujo-$ANO.org
    [ "$curr" \< "$FECHA_FINAL" ] || break
    curr=$( date +%Y-%m-%d --date "$curr +1 day" )
    
done

################

FECHA_INICIO=$ANO-06-01
FECHA_FINAL=$ANO-06-$JUNIO

echo "** JUNY" >> bujo-$ANO.org

curr="$FECHA_INICIO"
while true; do

     echo $(date -d $curr +'%d de %B del %Y, %A')
     echo "*** $(date -d $curr +'%d de %B del %Y, %A')" >> bujo-$ANO.org
    [ "$curr" \< "$FECHA_FINAL" ] || break
    curr=$( date +%Y-%m-%d --date "$curr +1 day" )
    
done


################

FECHA_INICIO=$ANO-07-01
FECHA_FINAL=$ANO-07-$JULIO

echo "** JULIOL" >> bujo-$ANO.org

curr="$FECHA_INICIO"
while true; do

     echo $(date -d $curr +'%d de %B del %Y, %A')
     echo "*** $(date -d $curr +'%d de %B del %Y, %A')" >> bujo-$ANO.org
    [ "$curr" \< "$FECHA_FINAL" ] || break
    curr=$( date +%Y-%m-%d --date "$curr +1 day" )
    
done



################

FECHA_INICIO=$ANO-08-01
FECHA_FINAL=$ANO-08-$AGOSTO

echo "** AGOST" >> bujo-$ANO.org

curr="$FECHA_INICIO"
while true; do

     echo $(date -d $curr +'%d de %B del %Y, %A')
     echo "*** $(date -d $curr +'%d de %B del %Y, %A')" >> bujo-$ANO.org
    [ "$curr" \< "$FECHA_FINAL" ] || break
    curr=$( date +%Y-%m-%d --date "$curr +1 day" )
    
done



################

FECHA_INICIO=$ANO-09-01
FECHA_FINAL=$ANO-09-$SEPTIEMBRE

echo "** SEPTEMBRE" >> bujo-$ANO.org

curr="$FECHA_INICIO"
while true; do

     echo $(date -d $curr +'%d de %B del %Y, %A')
     echo "*** $(date -d $curr +'%d de %B del %Y, %A')" >> bujo-$ANO.org
    [ "$curr" \< "$FECHA_FINAL" ] || break
    curr=$( date +%Y-%m-%d --date "$curr +1 day" )
    
done


################

FECHA_INICIO=$ANO-10-01
FECHA_FINAL=$ANO-10-$OCTUBRE

echo "** OCTUBRE" >> bujo-$ANO.org

curr="$FECHA_INICIO"
while true; do

     echo $(date -d $curr +'%d de %B del %Y, %A')
     echo "*** $(date -d $curr +'%d de %B del %Y, %A')" >> bujo-$ANO.org
    [ "$curr" \< "$FECHA_FINAL" ] || break
    curr=$( date +%Y-%m-%d --date "$curr +1 day" )
    
done



################

FECHA_INICIO=$ANO-11-01
FECHA_FINAL=$ANO-11-$NOVIEMBRE

echo "** NOVEMBRE" >> bujo-$ANO.org

curr="$FECHA_INICIO"
while true; do

     echo $(date -d $curr +'%d de %B del %Y, %A')
     echo "*** $(date -d $curr +'%d de %B del %Y, %A')" >> bujo-$ANO.org
    [ "$curr" \< "$FECHA_FINAL" ] || break
    curr=$( date +%Y-%m-%d --date "$curr +1 day" )
    
done



################

FECHA_INICIO=$ANO-12-01
FECHA_FINAL=$ANO-12-$DICIEMBRE

echo "** DESEMBRE" >> bujo-$ANO.org

curr="$FECHA_INICIO"
while true; do

     echo $(date -d $curr +'%d de %B del %Y, %A')
     echo "*** $(date -d $curr +'%d de %B del %Y, %A')" >> bujo-$ANO.org
    [ "$curr" \< "$FECHA_FINAL" ] || break
    curr=$( date +%Y-%m-%d --date "$curr +1 day" )
    
done
