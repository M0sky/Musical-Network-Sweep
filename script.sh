#! /bin/bash

####################################
#                                  #
#    NOTA           FRECUENCIA     #
#                                  #
####################################
     DO=277,18      #DO SOSTENIDO
     RE=293,665 
     MI=329,628
     FA=369,99      #FA SOSTENIDO
     SOL=391,995
     LA=440
     SI=493,88

     DO2=554,365    #DO SOSTENIDO
     RE2=587,33
     MI2=659,255
     FA2=739,989    #FA SOSTENIDO
     SOL2=783,991
     LA2=880
     SI2=987,767

#VAMOS A UTILIZAR LAS NOTAS
#    DO# Y RE#
#LOS COMPASES SON A 4/4 (1600ms)

trap ctrl_c INT

function ctrl_c() {
    echo -e "\n\n[*]Exiting...\n"
    tput cnorm; exit 0
}
tput civis;

beep -f $SI    -l 400        -D 50
            sleep 0.1
beep -f $FA    -l 100        -D 50
beep -f $SI    -l 100        -D 50
beep -f $DO2   -l 100        -D 50

beep -f $RE2   -l 133        -D 50
beep -f $MI2   -l 133        -D 50
beep -f $RE2   -l 133        -D 50
beep -f $DO2   -l 133        -D 50
beep -f $SI    -l 133        -D 50
beep -f $LA    -l 133        -D 50
#

beep -f $SOL   -l 300        -D 50
beep -f $RE2   -l 300        -D 50     
beep -f $RE2   -l 600        -D 50
            sleep 0.4

            .
            .
            .

beep -f $SOL2   -l 100        -D 50
beep -f $SOL2   -l 200        -D 50
beep -f $RE2    -l 300        -D 50
            sleep 0.4
#

beep -f $SOL2   -l 100  -r 3  -D 50
beep -f $SOL2   -l 200        -D 50
beep -f $sol2   -l 100        -D 50
beep -f $LA2    -l 100        -D 50
beep -f $LA2    -l 200        -D 50
#

beep -f $FA2    -l 300        -D 50
            sleep 0.4
beep -f $FA2    -l 100  -r 3  -D 50
beep -f $FA2    -l 200        -D 50
beep -f $LA2    -l 100        -D 50
beep -f $SOL2   -l 100        -D 50
beep -f $FA2    -l 200        -D 50
beep -f $MI2    -l 300        -D 50
#
#He añadido 6 compases más a la partitura

tput cnorm
