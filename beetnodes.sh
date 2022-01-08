#!/bin/bash
# Este es el script de inicio de BeetNodes! Made by HiroBeet! 🦑
rm -r mnt/server/* &> /dev/null ### Eliminando todos los archivos actuales!
#/////////////// 🚩 Variables 🚩 ///////////////#

FILE_CUSTOM=.custom.beetnodes
FILE_TANJIRO=.tanjiro.beetnodes
FILE_ALCATRAZ=.alcatraz.beetnodes

#/////////////// 🌵 Funciones (1) 🌵 ///////////////#

function check_custom { ### Check Custom (INSTALACION CUSTOM)
    if [ -f "$FILE_CUSTOM" ]; then
        echo -e '\e[92m* \e[39m[\e[94mINFO\e[39m] Bienvenid@ a BeetNodes, has seleccionado una instalacion \e[4m\e[95mCustom\e[39m\e[0m!'
    elif [ -f "$FILE_TANJIRO" ]; then
        echo -e '\e[92m* \e[39m[\e[94mINFO\e[39m] Bienvenid@ a BeetNodes, has seleccionado a \e[4m\e[95mTanjiro\e[39m\e[0m!'
            if [ -f /home/container/package.json ]; then /usr/local/bin/npm install; fi; /usr/local/bin/node /home/container/index.js
    elif [ -f "$FILE_ALCATRAZ" ]; then
        echo -e '\e[92m* \e[39m[\e[94mINFO\e[39m] Bienvenid@ a BeetNodes, has seleccionado a \e[4m\e[95mAlcatraz\e[39m\e[0m!'
            if [ -f /home/container/package.json ]; then /usr/local/bin/npm install; fi; /usr/local/bin/node /home/container/index.js
    fi
}

#/////////////// 🎂 Inicio del script 🎂 ///////////////#

sleep 0.5
clear
sleep 1
check_custom
