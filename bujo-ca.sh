#    ______                                         _
#   / _____)                                       | |
#  | /  ___   ____  ____    ____   ____   ____   _ | |  ___    ____
#  | | (___) / _  )|  _ \  / _  ) / ___) / _  | / || | / _ \  / ___)
#  | \____/|( (/ / | | | |( (/ / | |    ( ( | |( (_| || |_| || |
#   \_____/  \____)|_| |_| \____)|_|     \_||_| \____| \___/ |_|
#
#   ______          _  _                   _____                                     _    _____    _         _               _
#  (____  \        | || |        _        (_____)                                   | |  (____ \  (_)       (_) _           | |
#   ____)  ) _   _ | || |  ____ | |_         _     ___   _   _   ____  ____    ____ | |   _   \ \  _   ____  _ | |_    ____ | |
#  |  __  ( | | | || || | / _  )|  _)       | |   / _ \ | | | | / ___)|  _ \  / _  || |  | |   | || | / _  || ||  _)  / _  || |
#  | |__)  )| |_| || || |( (/ / | |__    ___| |  | |_| || |_| || |    | | | |( ( | || |  | |__/ / | |( ( | || || |__ ( ( | || |
#  |______/  \____||_||_| \____) \___)  (____/    \___/  \____||_|    |_| |_| \_||_||_|  |_____/  |_| \_|| ||_| \___) \_||_||_|
#                                                                                                    (_____|
#
echo " "
echo "Benvingut a l'escript de generació d'un arxiu"
echo "\e[1;96mBullet Journal Digital\e[0m en format \e[1;96mOrgMode\e[0m."
echo " "
echo "Recorda que \e[1;96mOrgMode\e[0m. és un format de text pla"
echo "què podràs treballar directament sobre \e[1;96mEmacs\e[0m."
echo " "
echo "Introdueix \e[1;33ml'any\e[0m què vols generar: "
echo " "
echo "----"
read ANO
echo "----"
echo " "
echo "Introdueix el teu \e[1;33mnom\e[0m:"
echo " "
echo "----------------------"
read AUTHOR
echo "----------------------"
echo " "

echo "#+TITLE: Bullet Journal Digital
#+AUTHOR: $AUTHOR
#+DATE: $ANO
#+LANGUAGE: ca
#+SEQ_TODO: TODO(t) NEXT(n) WAIT(w) | CANCELLED (c) DONE(d)
#+INFOJS_OPT: view:t toc:t ltoc:t mouse:underline buttons:0 path:https://ugeek.github.io/style-css-org-mode/org-info.min.js
#+HTML_HEAD: <link rel="stylesheet" type="text/css" href="https://ugeek.github.io/style-css-org-mode/bjm.css" />
#+STARTUP: inlineimages" > bujo-ca-$ANO.org


echo "
* Index" >> bujo-ca-$ANO.org

echo "** Claus
*** TODO Tasca per fer
*** NEXT Propera tasca
*** DOING Tasca començada
*** WAIT Tasca congelada
*** DONE Tasca feta
*** CANCELLED Tasca cancelada
*** CLOSED Tasca tancada
*** [#A] Tasca importàcia màxima
*** [#B] Tasca relevant
*** [#C] Tasca delegada
*** > Tasca que ve d'altre dia
*** < Tarea Migra a altre dia
*** # Nota" >> bujo-ca-$ANO.org

############## Generar CONCEPTUALITZACIÓ

echo "* Teoria" >> bujo-ca-$ANO.org
echo "" >> bujo-ca-$ANO.org
echo "El contingut de Bullet Journal Digital es basa en https://bulletjournal.com" >> bujo-ca-$ANO.org
echo "" >> bujo-ca-$ANO.org
echo "** Bullet Journal
    **Rapid Loggin** és l'idioma en què parla Bullet Journal, el qual consta de quatre components:

    - Temes
    - Nombres de pàgina (links en la versió digital)
    - Oracions curtes
    - Bullets o vinyetes
    - Tasques
    - Eventes
    - Notes
    - Significadors
" >> bujo-ca-$ANO.org
echo ""
echo "
    *Bullet Journal Digital* utilitzant la metodologia *OrgMode* no és més que un intent de sistematitzar en un arxiu totes les dades possibles. Excepcionalment utilitzem arxius externs per a arxivar troços de text, per a capturar o per a incrustar bibliografia a partir d'un arxiu específic.
" >> bujo-ca-$ANO.org

################ Teoría GTD
echo "** GTD
*** Dimensions
**** Control
***** Capturar
***** Aclarir
***** Organitzar
***** Reflexionar
***** Comprometre's
**** Perspectiva
***** Propòsits - Principis
***** Visió
***** Metes
***** Àrees de responsabilitat
***** Projectes
***** Accions
*** Matriu d'autogestió
**** Bajo Control + Baja Perspectiva
   - Negatiu: Víctima
   - Positiu: Capacitat de resposta
**** Alt Control + Baixa Perspectiva
   - Negatiu: Micromanager
   - Positiu: Implementador
**** Bajo Control + Alta Perspectiva
   - Negatiu: Creador boig
   - Positiu: Visionari
**** Bajo Control + Baja Perspectiva
   - Negatiu: Autocomplacència
   - Positiu: Comandant en cap
** Dessign Thinking
   1. Empatitza
   2. Defineix
   3. Idea
   4. Prototipa
   5. Testeja
" >> bujo-ca-$ANO.org

################ ID

echo "* Identificador" >> bujo-ca-$ANO.org
echo " "
echo "Espai pensat per identificar dades, persones, a les quals fer referència al llarg del document."
echo "** Cotxe
:PROPERTIES:
:ID:    
:MARCA:
:MODEL:
:MATRIC:
:END:
" >> bujo-ca-$ANO.org

############## Generar CALENDARI

# Declareem les variables choice and assignem valor 3
choice=3
# Print to stdout
echo "Has de decidir si vols el Calendari: "
echo "1. En \e[1;33muna\e[0m columna, ideal per al \e[1;33mmòbil\e[0m."
echo "2. En \e[1;92mtres\e[0m columnes, ideal per a \e[1;92ml'ordinador\e[0m."
echo -n "Eleigix un valor: [1 ó 2]? "
# Loop mientras la variable sea 3
# bash while loop
while [ $choice -eq 3 ]; do

# llig input
read choice
# bash nested if/else
# Donem a elegir generar el calendari en una columna o en tres
if [ $choice -eq 1 ] ; then

    echo "* CALENDARI" >> bujo-ca-$ANO.org

    echo "$(cal 1 $ANO)" >> bujo-ca-$ANO.org
    echo " " >> bujo-ca-$ANO.org
    echo "$(cal 2 $ANO)" >> bujo-ca-$ANO.org
    echo " " >> bujo-ca-$ANO.org
    echo "$(cal 3 $ANO)" >> bujo-ca-$ANO.org
    echo " " >> bujo-ca-$ANO.org
    echo "$(cal 4 $ANO)" >> bujo-ca-$ANO.org
    echo " " >> bujo-ca-$ANO.org
    echo "$(cal 5 $ANO)" >> bujo-ca-$ANO.org
    echo " " >> bujo-ca-$ANO.org
    echo "$(cal 6 $ANO)" >> bujo-ca-$ANO.org
    echo " " >> bujo-ca-$ANO.org
    echo "$(cal 7 $ANO)" >> bujo-ca-$ANO.org
    echo " " >> bujo-ca-$ANO.org
    echo "$(cal 8 $ANO)" >> bujo-ca-$ANO.org
    echo " " >> bujo-ca-$ANO.org
    echo "$(cal 9 $ANO)" >> bujo-ca-$ANO.org
    echo " " >> bujo-ca-$ANO.org
    echo "$(cal 10 $ANO)" >> bujo-ca-$ANO.org
    echo " " >> bujo-ca-$ANO.org
    echo "$(cal 11 $ANO)" >> bujo-ca-$ANO.org
    echo " " >> bujo-ca-$ANO.org
    echo "$(cal 12 $ANO)" >> bujo-ca-$ANO.org

else

    if [ $choice -eq 2 ] ; then
            echo "* Calendar" >> bujo-ca-$ANO.org

            echo  "$(cal 2 -3 $ANO)" >> bujo-ca-$ANO.org
            echo  "$(cal 5 -3 $ANO)" >> bujo-ca-$ANO.org
            echo  "$(cal 8 -3 $ANO)" >> bujo-ca-$ANO.org
            echo  "$(cal 11 -3 $ANO)" >> bujo-ca-$ANO.org
    else
            echo "Elegix entre aquestes opcions 1-2 !"
            echo "1. Una columna"
            echo "2. Tres columnes"
            choice=3
    fi
fi
done

############## FI Generar CALENDARI

############## Generar FUTURE LOG
# Llistem els mesos de forma literal

echo "* Future Log" >> bujo-ca-$ANO.org
echo "** 01 Gener
** 02 Febrer
** 03 Març
** 04 Abril
** 05 Maig
** 06 Juny
** 07 Juliol
** 08 Agost
** 09 Setembre
** 10 Octubre
** 11 Novembre
** 12 Desembre" >> bujo-ca-$ANO.org

############## FI Generar FUTURE LOG

############## Generar MONTHY LOG
# Calculem quants dies té cada mes

echo "* Monthy Log" >> bujo-ca-$ANO.org

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

############### Codi GENER
# Generem, de forma acotada, mes a mes.
# La variable $curr indica l'increment dia a dia.


FECHA_INICIO=$ANO-01-01
FECHA_FINAL=$ANO-01-$ENERO

echo "** GENER" >> bujo-ca-$ANO.org

curr="$FECHA_INICIO"
while true; do

     echo $(date -d $curr +'%d %A')
     echo "*** $(date -d $curr +'%d %A')" >> bujo-ca-$ANO.org
    [ "$curr" \< "$FECHA_FINAL" ] || break
    curr=$( date +%Y-%m-%d --date "$curr +1 day" )
    
done


################ Codi FEBRER

FECHA_INICIO=$ANO-02-01
FECHA_FINAL=$ANO-02-$FEBRERO

echo "** FEBRER" >> bujo-ca-$ANO.org

curr="$FECHA_INICIO"
while true; do

     echo $(date -d $curr +'%d %A')
     echo "*** $(date -d $curr +'%d %A')" >> bujo-ca-$ANO.org
    [ "$curr" \< "$FECHA_FINAL" ] || break
    curr=$( date +%Y-%m-%d --date "$curr +1 day" )
    
done


################ Codi MARÇ

FECHA_INICIO=$ANO-03-01
FECHA_FINAL=$ANO-03-$MARZO

echo "** MARÇ" >> bujo-ca-$ANO.org

curr="$FECHA_INICIO"
while true; do

     echo $(date -d $curr +'%d %A')
     echo "*** $(date -d $curr +'%d %A')" >> bujo-ca-$ANO.org
    [ "$curr" \< "$FECHA_FINAL" ] || break
    curr=$( date +%Y-%m-%d --date "$curr +1 day" )
    
done

################ Codi ABRIL

FECHA_INICIO=$ANO-04-01
FECHA_FINAL=$ANO-04-$ABRIL

echo "** ABRIL" >> bujo-ca-$ANO.org

curr="$FECHA_INICIO"
while true; do

     echo $(date -d $curr +'%d %A')
     echo "*** $(date -d $curr +'%d %A')" >> bujo-ca-$ANO.org
    [ "$curr" \< "$FECHA_FINAL" ] || break
    curr=$( date +%Y-%m-%d --date "$curr +1 day" )
    
done


################ Codi MAIG

FECHA_INICIO=$ANO-05-01
FECHA_FINAL=$ANO-05-$MAYO

echo "** MAIG" >> bujo-ca-$ANO.org

curr="$FECHA_INICIO"
while true; do

     echo $(date -d $curr +'%d %A')
     echo "*** $(date -d $curr +'%d %A')" >> bujo-ca-$ANO.org
    [ "$curr" \< "$FECHA_FINAL" ] || break
    curr=$( date +%Y-%m-%d --date "$curr +1 day" )
    
done

################ Codi JUNY

FECHA_INICIO=$ANO-06-01
FECHA_FINAL=$ANO-06-$JUNIO

echo "** JUNY" >> bujo-ca-$ANO.org

curr="$FECHA_INICIO"
while true; do

     echo $(date -d $curr +'%d %A')
     echo "*** $(date -d $curr +'%d %A')" >> bujo-ca-$ANO.org
    [ "$curr" \< "$FECHA_FINAL" ] || break
    curr=$( date +%Y-%m-%d --date "$curr +1 day" )
    
done


################ Codi JULIOL

FECHA_INICIO=$ANO-07-01
FECHA_FINAL=$ANO-07-$JULIO

echo "** JULIOL" >> bujo-ca-$ANO.org

curr="$FECHA_INICIO"
while true; do

     echo $(date -d $curr +'%d %A')
     echo "*** $(date -d $curr +'%d %A')" >> bujo-ca-$ANO.org
    [ "$curr" \< "$FECHA_FINAL" ] || break
    curr=$( date +%Y-%m-%d --date "$curr +1 day" )
    
done



################ Codi AGOST

FECHA_INICIO=$ANO-08-01
FECHA_FINAL=$ANO-08-$AGOSTO

echo "** AGOST" >> bujo-ca-$ANO.org

curr="$FECHA_INICIO"
while true; do

     echo $(date -d $curr +'%d %A')
     echo "*** $(date -d $curr +'%d %A')" >> bujo-ca-$ANO.org
    [ "$curr" \< "$FECHA_FINAL" ] || break
    curr=$( date +%Y-%m-%d --date "$curr +1 day" )
    
done



################ Codi SETEMBRE

FECHA_INICIO=$ANO-09-01
FECHA_FINAL=$ANO-09-$SEPTIEMBRE

echo "** SEPTEMBRE" >> bujo-ca-$ANO.org

curr="$FECHA_INICIO"
while true; do

     echo $(date -d $curr +'%d %A')
     echo "*** $(date -d $curr +'%d %A')" >> bujo-ca-$ANO.org
    [ "$curr" \< "$FECHA_FINAL" ] || break
    curr=$( date +%Y-%m-%d --date "$curr +1 day" )
    
done


################ Codi OCTUBRE

FECHA_INICIO=$ANO-10-01
FECHA_FINAL=$ANO-10-$OCTUBRE

echo "** OCTUBRE" >> bujo-ca-$ANO.org

curr="$FECHA_INICIO"
while true; do

     echo $(date -d $curr +'%d %A')
     echo "*** $(date -d $curr +'%d %A')" >> bujo-ca-$ANO.org
    [ "$curr" \< "$FECHA_FINAL" ] || break
    curr=$( date +%Y-%m-%d --date "$curr +1 day" )
    
done



################ Codi NOVEMBRE

FECHA_INICIO=$ANO-11-01
FECHA_FINAL=$ANO-11-$NOVIEMBRE

echo "** NOVEMBRE" >> bujo-ca-$ANO.org

curr="$FECHA_INICIO"
while true; do

     echo $(date -d $curr +'%d %A')
     echo "*** $(date -d $curr +'%d %A')" >> bujo-ca-$ANO.org
    [ "$curr" \< "$FECHA_FINAL" ] || break
    curr=$( date +%Y-%m-%d --date "$curr +1 day" )
    
done



################ Codi DESEMBRE

FECHA_INICIO=$ANO-12-01
FECHA_FINAL=$ANO-12-$DICIEMBRE

echo "** DESEMBRE" >> bujo-ca-$ANO.org

curr="$FECHA_INICIO"
while true; do

     echo $(date -d $curr +'%d %A')
     echo "*** $(date -d $curr +'%d %A')" >> bujo-ca-$ANO.org
    [ "$curr" \< "$FECHA_FINAL" ] || break
    curr=$( date +%Y-%m-%d --date "$curr +1 day" )
    
done

############## FI Generar MONTHY LOG


############### Generació de DAILY LOG

echo "* Daily Log" >> bujo-ca-$ANO.org

###############
# Genere de forma acotada en mesos
# els dies de cada mes amb un format
# més llarg aquesta vegada.

FECHA_INICIO=$ANO-01-01
FECHA_FINAL=$ANO-01-$ENERO

echo "** GENER" >> bujo-ca-$ANO.org

curr="$FECHA_INICIO"
while true; do

     echo $(date -d $curr +'%d de %B del %Y, %A')
     echo "*** $(date -d $curr +'%d de %B del %Y, %A')" >> bujo-ca-$ANO.org
    [ "$curr" \< "$FECHA_FINAL" ] || break
    curr=$( date +%Y-%m-%d --date "$curr +1 day" )
    
done


################

FECHA_INICIO=$ANO-02-01
FECHA_FINAL=$ANO-02-$FEBRERO

echo "** FEBRER" >> bujo-ca-$ANO.org

curr="$FECHA_INICIO"
while true; do

     echo $(date -d $curr +'%d de %B del %Y, %A')
     echo "*** $(date -d $curr +'%d de %B del %Y, %A')" >> bujo-ca-$ANO.org
    [ "$curr" \< "$FECHA_FINAL" ] || break
    curr=$( date +%Y-%m-%d --date "$curr +1 day" )
    
done


################

FECHA_INICIO=$ANO-03-01
FECHA_FINAL=$ANO-03-$MARZO

echo "** MARÇ" >> bujo-ca-$ANO.org

curr="$FECHA_INICIO"
while true; do

     echo $(date -d $curr +'%d de %B del %Y, %A')
     echo "*** $(date -d $curr +'%d de %B del %Y, %A')" >> bujo-ca-$ANO.org
    [ "$curr" \< "$FECHA_FINAL" ] || break
    curr=$( date +%Y-%m-%d --date "$curr +1 day" )
    
done

################

FECHA_INICIO=$ANO-04-01
FECHA_FINAL=$ANO-04-$ABRIL

echo "** ABRIL" >> bujo-ca-$ANO.org

curr="$FECHA_INICIO"
while true; do

     echo $(date -d $curr +'%d de %B del %Y, %A')
     echo "*** $(date -d $curr +'%d de %B del %Y, %A')" >> bujo-ca-$ANO.org
    [ "$curr" \< "$FECHA_FINAL" ] || break
    curr=$( date +%Y-%m-%d --date "$curr +1 day" )
    
done


################

FECHA_INICIO=$ANO-05-01
FECHA_FINAL=$ANO-05-$MAYO

echo "** MAIG" >> bujo-ca-$ANO.org

curr="$FECHA_INICIO"
while true; do


     echo $(date -d $curr +'%d de %B del %Y, %A')
     echo "*** $(date -d $curr +'%d de %B del %Y, %A')" >> bujo-ca-$ANO.org
    [ "$curr" \< "$FECHA_FINAL" ] || break
    curr=$( date +%Y-%m-%d --date "$curr +1 day" )
    
done

################

FECHA_INICIO=$ANO-06-01
FECHA_FINAL=$ANO-06-$JUNIO

echo "** JUNY" >> bujo-ca-$ANO.org

curr="$FECHA_INICIO"
while true; do

     echo $(date -d $curr +'%d de %B del %Y, %A')
     echo "*** $(date -d $curr +'%d de %B del %Y, %A')" >> bujo-ca-$ANO.org
    [ "$curr" \< "$FECHA_FINAL" ] || break
    curr=$( date +%Y-%m-%d --date "$curr +1 day" )
    
done


################

FECHA_INICIO=$ANO-07-01
FECHA_FINAL=$ANO-07-$JULIO

echo "** JULIOL" >> bujo-ca-$ANO.org

curr="$FECHA_INICIO"
while true; do

     echo $(date -d $curr +'%d de %B del %Y, %A')
     echo "*** $(date -d $curr +'%d de %B del %Y, %A')" >> bujo-ca-$ANO.org
    [ "$curr" \< "$FECHA_FINAL" ] || break
    curr=$( date +%Y-%m-%d --date "$curr +1 day" )
    
done



################

FECHA_INICIO=$ANO-08-01
FECHA_FINAL=$ANO-08-$AGOSTO

echo "** AGOST" >> bujo-ca-$ANO.org

curr="$FECHA_INICIO"
while true; do

     echo $(date -d $curr +'%d de %B del %Y, %A')
     echo "*** $(date -d $curr +'%d de %B del %Y, %A')" >> bujo-ca-$ANO.org
    [ "$curr" \< "$FECHA_FINAL" ] || break
    curr=$( date +%Y-%m-%d --date "$curr +1 day" )
    
done



################

FECHA_INICIO=$ANO-09-01
FECHA_FINAL=$ANO-09-$SEPTIEMBRE

echo "** SEPTEMBRE" >> bujo-ca-$ANO.org

curr="$FECHA_INICIO"
while true; do

     echo $(date -d $curr +'%d de %B del %Y, %A')
     echo "*** $(date -d $curr +'%d de %B del %Y, %A')" >> bujo-ca-$ANO.org
    [ "$curr" \< "$FECHA_FINAL" ] || break
    curr=$( date +%Y-%m-%d --date "$curr +1 day" )
    
done


################

FECHA_INICIO=$ANO-10-01
FECHA_FINAL=$ANO-10-$OCTUBRE

echo "** OCTUBRE" >> bujo-ca-$ANO.org

curr="$FECHA_INICIO"
while true; do

     echo $(date -d $curr +'%d de %B del %Y, %A')
     echo "*** $(date -d $curr +'%d de %B del %Y, %A')" >> bujo-ca-$ANO.org
    [ "$curr" \< "$FECHA_FINAL" ] || break
    curr=$( date +%Y-%m-%d --date "$curr +1 day" )
    
done



################

FECHA_INICIO=$ANO-11-01
FECHA_FINAL=$ANO-11-$NOVIEMBRE

echo "** NOVEMBRE" >> bujo-ca-$ANO.org

curr="$FECHA_INICIO"
while true; do

     echo $(date -d $curr +'%d de %B del %Y, %A')
     echo "*** $(date -d $curr +'%d de %B del %Y, %A')" >> bujo-ca-$ANO.org
    [ "$curr" \< "$FECHA_FINAL" ] || break
    curr=$( date +%Y-%m-%d --date "$curr +1 day" )
    
done



################

FECHA_INICIO=$ANO-12-01
FECHA_FINAL=$ANO-12-$DICIEMBRE

echo "** DESEMBRE" >> bujo-ca-$ANO.org

curr="$FECHA_INICIO"
while true; do

     echo $(date -d $curr +'%d de %B del %Y, %A')
     echo "*** $(date -d $curr +'%d de %B del %Y, %A')" >> bujo-ca-$ANO.org
    [ "$curr" \< "$FECHA_FINAL" ] || break
    curr=$( date +%Y-%m-%d --date "$curr +1 day" )
    
done


################ Projects

echo "* Projectes" >> bujo-ca-$ANO.org
echo " "
echo "Espai pensat per descriure els projectes responent a les preguntes:
     - Què
     - Com
     - Quan
     - A on
     - Per què
 "

################ Col·leccions

echo "** Links" >> bujo-ca-$ANO.org
echo "** Notes" >> bujo-ca-$ANO.org

################ Trackers

echo "* Trackers" >> bujo-ca-$ANO.org

################ Kanban

echo "* Kanban
#+Begin: kanban
#+END" >> bujo-ca-$ANO.org
