#!/bin/bash
# Este es el script de inicio de BeetNodes! Made by HiroBeet! 🦑
rm -r mnt/server/* &> /dev/null ### Eliminando todos los archivos actuales!
#/////////////// 🚩 Variables 🚩 ///////////////#

FILE_FIRST_START=.first.beetnodes
FILE_CUSTOM=.custom.beetnodes
FILE_TANJIRO=.tanjiro.beetnodes
FILE_ALCATRAZ=.alcatraz.beetnodes
FILE_DOGEBOT=.dogebot.beetnodes
FILE_FX_BOT_V83=.fxbot.v83.beetnodes
FILE_START_MAINJS=.start.mainjs.beetnodes
FILE_START_INDEXJS=.start.indexjs.beetnodes

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
        if [ -f "$FILE_START_MAINJS" ]; then
            if [ -f /home/container/package.json ]; then /usr/local/bin/npm install; fi; /usr/local/bin/node /home/container/main.js
        elif [ -f "$FILE_START_INDEXJS" ]; then
            if [ -f /home/container/package.json ]; then /usr/local/bin/npm install; fi; /usr/local/bin/node /home/container/index.js
        else
            sleep 1
                echo -e '\e[92m* \e[39m[\e[94mINFO\e[39m] Cual es el archivo de inicio de tu bot?'
                        echo
                            while true; do
                                    sleep 0.5
                                echo -e '\e[39m 1 | \e[95m➟\e[39m  Main.js'
                                    sleep 0.5
                                echo -e '\e[39m 2 | \e[95m➟\e[39m  Index.js'
                                    sleep 0.5
                                echo -e '\e[39m 3 | \e[95m➟\e[39m  Archivo Custom'
                                    echo
                                        sleep 0.5
                                read -p '         |>>>| ' option
                                    sleep 1
                                        echo
                                            case $option in
                                                [1]* )
                                                    touch .start.mainjs.beetnodes &> /dev/null
                                                        if [ -f /home/container/package.json ]; then /usr/local/bin/npm install; fi; /usr/local/bin/node /home/container/main.js
                                                            exit; break;;
                                                [2]* )
                                                    touch .start.indexjs.beetnodes &> /dev/null
                                                        if [ -f /home/container/package.json ]; then /usr/local/bin/npm install; fi; /usr/local/bin/node /home/container/index.js
                                                            exit; break;;
                                                [3]* )
                                                    sleep 1.5
                                                        clear
                                                    sleep 2
                                                        echo -e '\e[92m* \e[39m[\e[94mINFO\e[39m] Cual es el archivo de inicio de tu bot personalizado?'
                                                            echo
                                                                sleep 0.5
                                                            read -p '         |>>>| ' ARCHIVO_INICIO
                                                                sleep 0.2
                                                                    echo -e '\e[92m* \e[39m[\e[94mINFO\e[39m] Iniciando servidor...'
                                                                        if [ -f /home/container/package.json ]; then /usr/local/bin/npm install; fi; /usr/local/bin/node /home/container/$ARCHIVO_INICIO
                                                        exit; break;;
                                                * )
                                                    sleep 1.5
                                                        clear
                                                    echo -e '\e[92m* \e[39m[\e[91mERROR\e[39m] Esta no es una opcion valida!'
                                            esac
                            done
        fi
    elif [ -f "$FILE_TANJIRO" ]; then
        echo -e '\e[92m* \e[39m[\e[94mINFO\e[39m] Acabas de iniciar tu servidor, y has seleccionado \e[4m\e[95mTanjiro\e[39m\e[0m!'
            sleep 3
                    echo
            sleep 2
                clear
        echo -e '\e[92m* \e[39m[\e[94mINFO\e[39m] Iniciando servidor...'
            sleep 2.5
                echo
                    if [ -f /home/container/package.json ]; then /usr/local/bin/npm install; fi; /usr/local/bin/node /home/container/index.js
    elif [ -f "$FILE_ALCATRAZ" ]; then
        echo -e '\e[92m* \e[39m[\e[94mINFO\e[39m] Acabas de iniciar tu servidor, y has seleccionado \e[4m\e[95mAlcatraz\e[39m\e[0m!'
            sleep 3
                    echo
            sleep 2
                clear
        echo -e '\e[92m* \e[39m[\e[94mINFO\e[39m] Iniciando servidor...'
            sleep 2.5
                echo
                    if [ -f /home/container/package.json ]; then /usr/local/bin/npm install; fi; /usr/local/bin/node /home/container/index.js
    elif [ -f "$FILE_DOGEBOT" ]; then
        echo -e '\e[92m* \e[39m[\e[94mINFO\e[39m] Acabas de iniciar tu servidor, y has seleccionado \e[4m\e[95mDogeBot\e[39m\e[0m!'
            sleep 3
                    echo
            sleep 2
                clear
        echo -e '\e[92m* \e[39m[\e[94mINFO\e[39m] Iniciando servidor...'
            sleep 2.5
                echo
                    if [ -f /home/container/package.json ]; then /usr/local/bin/npm install; fi; /usr/local/bin/node /home/container/main.js
    elif [ -f "$FILE_FX_BOT_V83" ]; then
        echo -e '\e[92m* \e[39m[\e[94mINFO\e[39m] Acabas de iniciar tu servidor, y has seleccionado \e[4m\e[95mFx-Bot-V83\e[39m\e[0m!'
            sleep 3
                    echo
            sleep 2
                clear
        echo -e '\e[92m* \e[39m[\e[94mINFO\e[39m] Iniciando servidor...'
            sleep 2.5
                echo
                    if [ -f /home/container/package.json ]; then /usr/local/bin/node /home/container/index.js; fi
    else
        sleep 2
                clear
            echo -e '\e[92m* \e[39m[\e[91mERROR\e[39m] No se ha podido encontrar el archivo de instalacion, contacta con soporte para recibir ayuda, o reinstala tu servidor!'
                sleep 5
                    exit
    fi
}

#/////////////// 🎂 Inicio del script 🎂 ///////////////#

bienvenida # Llamando bienvenida!
check_instalacion # Llamando check_instalacion!
