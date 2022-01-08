#!/bin/bash
# Este es el script de inicio de BeetNodes! Made by HiroBeet! 🦑
rm -r mnt/server/* &> /dev/null ### Eliminando todos los archivos actuales!
#/////////////// 🚩 Variables 🚩 ///////////////#

FILE_CUSTOM=.custom.beetnodes
FILE_TANJIRO=.tanjiro.beetnodes
FILE_ALCATRAZ=.alcatraz.beetnodes

#/////////////// 🌵 Funciones (1) 🌵 ///////////////#

function bienvenida { ### Funcion de bienvenida!
        sleep 0.5
            clear
        sleep 1
    echo -e '\e[92m* \e[39m[\e[94mINFO\e[39m] Bienvenid@ a BeetNodes, gracias por confiar en \e[4m\e[95mBeetNodes\e[39m\e[0m!'
        sleep 3
    echo -e '\e[92m* \e[39m[\e[94mINFO\e[39m] En \e[4m\e[95mBeetNodes\e[39m\e[0m estamos muy felices de verte aqui, y esperamos que disfrutes de los servicios que ofrecemos, de alta calidad, por un muy bajo costo!'
        sleep 10
            clear
}

function check_custom { ### Check Custom (INSTALACION CUSTOM)
    if [ -f "$FILE_CUSTOM" ]; then
        echo -e '\e[92m* \e[39m[\e[94mINFO\e[39m] Acabas de iniciar tu servidor, y has seleccionado una instalacion \e[4m\e[95mCustom\e[39m\e[0m!'

    elif [ -f "$FILE_TANJIRO" ]; then
        echo -e '\e[92m* \e[39m[\e[94mINFO\e[39m] Acabas de iniciar tu servidor, y seleccionado a \e[4m\e[95mTanjiro\e[39m\e[0m!'
            sleep 1.5
                    echo
            sleep 0.5
                clear
        echo -r '\e[92m* \e[39m[\e[94mINFO\e[39m] Iniciando instalacion...'
            if [ -f /home/container/package.json ]; then /usr/local/bin/npm install; fi; /usr/local/bin/node /home/container/index.js
    elif [ -f "$FILE_ALCATRAZ" ]; then
        echo -e '\e[92m* \e[39m[\e[94mINFO\e[39m] Acabas de iniciar tu servidor, y seleccionado a \e[4m\e[95mAlcatraz\e[39m\e[0m!'
            sleep 1.5
                    echo
            sleep 0.5
                clear
        echo -r '\e[92m* \e[39m[\e[94mINFO\e[39m] Iniciando instalacion...'
            if [ -f /home/container/package.json ]; then /usr/local/bin/npm install; fi; /usr/local/bin/node /home/container/index.js
    fi
}

#/////////////// 🎂 Inicio del script 🎂 ///////////////#

bienvenida # Llamando bienvenida!
check_custom # Llamando check_custom!
