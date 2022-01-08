#!/bin/bash
# Este es el script de inicio de BeetNodes! Made by HiroBeet! 🦑
rm -r mnt/server/* &> /dev/null ### Eliminando todos los archivos actuales!
#/////////////// 🚩 Variables 🚩 ///////////////#

FILE_FIRST_START=.first.beetnodes
FILE_CUSTOM=.custom.beetnodes
FILE_TANJIRO=.tanjiro.beetnodes
FILE_ALCATRAZ=.alcatraz.beetnodes

#/////////////// 🌵 Funciones (1) 🌵 ///////////////#

function bienvenida { ### Funcion de bienvenida!
    if [ -f "$FILE_FIRST_START" ]; then
        sleep 0.5
            clear
        sleep 1
            echo -e '\e[92m* \e[39m[\e[94mINFO\e[39m] Bienvenid@ a BeetNodes, encendiendo tu \e[4m\e[95mservidor\e[39m\e[0m!'
        sleep 3
            clear
    else
        sleep 0.5
                clear
            sleep 1
        echo -e '\e[92m* \e[39m[\e[94mINFO\e[39m] Bienvenid@ a BeetNodes, gracias por confiar en \e[4m\e[95mBeetNodes\e[39m\e[0m!'
            sleep 3
        echo -e '\e[92m* \e[39m[\e[94mINFO\e[39m] En \e[4m\e[95mBeetNodes\e[39m\e[0m estamos muy felices de verte aqui, y esperamos que disfrutes de los servicios que ofrecemos, de alta calidad, por un muy bajo costo!'
            sleep 10
                clear
            touch .first.beetnodes &> /dev/null
    fi
}

function check_instalacion { ### Check instalacion
    if [ -f "$FILE_CUSTOM" ]; then
        echo -e '\e[92m* \e[39m[\e[94mINFO\e[39m] Acabas de iniciar tu servidor, y has seleccionado una instalacion \e[4m\e[95mCustom\e[39m\e[0m!'
            sleep 1.5
        echo -e '\e[92m* \e[39m[\e[94mINFO\e[39m] Cual es el archivo de inicio de tu bot?'
                echo
                    while true; do
                        echo -e '\e[39m 1 \e[95m➟\e[39m  Main.js'
                            sleep 0.5
                        echo -e '\e[39m 2 \e[95m➟\e[39m  Index.js'
                            echo
                                sleep 1
                        read -p '         |>>>| ' option
                            case $option in
                                [1]* )
                                    echo 'a'
                                        exit; break;;
                                [2]* )
                                    echo 'e'
                                        exit; break;;
                                * )
                                    sleep 1.5
                                        clear
                                    echo -e '\e[92m* \e[39m[\e[91mERROR\e[39m] Esta no es una opcion valida!'
                            esac
                    done
    elif [ -f "$FILE_TANJIRO" ]; then
        echo -e '\e[92m* \e[39m[\e[94mINFO\e[39m] Acabas de iniciar tu servidor, y seleccionado a \e[4m\e[95mTanjiro\e[39m\e[0m!'
            sleep 3
                    echo
            sleep 2
                clear
        echo -e '\e[92m* \e[39m[\e[94mINFO\e[39m] Iniciando servidor...'
            sleep 2.5
                echo
                    if [ -f /home/container/package.json ]; then /usr/local/bin/npm install; fi; /usr/local/bin/node /home/container/index.js
    elif [ -f "$FILE_ALCATRAZ" ]; then
        echo -e '\e[92m* \e[39m[\e[94mINFO\e[39m] Acabas de iniciar tu servidor, y seleccionado a \e[4m\e[95mAlcatraz\e[39m\e[0m!'
            sleep 3
                    echo
            sleep 2
                clear
        echo -e '\e[92m* \e[39m[\e[94mINFO\e[39m] Iniciando servidor...'
            sleep 2.5
                echo
                    if [ -f /home/container/package.json ]; then /usr/local/bin/npm install; fi; /usr/local/bin/node /home/container/index.js
    else
        sleep 2
                clear
            echo -e '\e[92m* \e[39m[\e[91mERROR\e[39m] No se ha podido encontrar el archivo de instalacion, contacta con soporte para recibir ayuda!'
                exit
    fi
}

#/////////////// 🎂 Inicio del script 🎂 ///////////////#

bienvenida # Llamando bienvenida!
check_instalacion # Llamando check_instalacion!
