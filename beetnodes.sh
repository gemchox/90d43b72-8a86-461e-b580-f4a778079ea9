#!/bin/bash
# Este es el script de inicio de BeetNodes! Made by HiroBeet! 🦑
# rm -r mnt/server/* &> /dev/null ### Eliminando todos los archivos actuales!
#/////////////// 🚩 Variables 🚩 ///////////////#

FILE_FIRST_START=.first.beetnodes
FILE_TANJIRO=.tanjiro.beetnodes
FILE_ALCATRAZ=.alcatraz.beetnodes
FILE_ALCATRAZ_V2=.alcatraz.v2.beetnodes
FILE_ASTERIA=.asteria.beetnodes
FILE_DOGEBOT=.dogebot.beetnodes
FILE_NK_BOT=.nkbot.beetnodes
FILE_SHADOW_BOT_V3=.shadowbot.v3.beetnodes
FILE_FXBOT_V83_2=.fxbot.v83-2.beetnodes
FILE_DYLUX_BOT=.dyluxbot.beetnodes
FILE_WABOT_AQ=.wabot.aq.beetnodes
FILE_GAMES_WABOT=.games.wabot.beetnodes
FILE_TERMUX_WABOT_ECONOMY=.termux.wabot.economy.beetnodes
FILE_BABY_BECHOSO_BOT=.baby.bechoso.beetnodes
FILE_FGBOT_BOT_V4=.fbbot.v4.beetnodes
FILE_TURBO_BOT_V3=.turbo.v3.beetnodes
FILE_BOTZAZA=.botzaza.beetnodes
FILE_BADBOY=.badboy.beetnodes
FILE_SHINIGAMI=.shinigami.beetnodes
FILE_TZY=.tzy.beetnodes
FILE_CUSTOM=.custom.beetnodes
FILE_START_MAINJS=.start.mainjs.beetnodes
FILE_START_INDEXJS=.start.indexjs.beetnodes
FILE_START_AUTO=.start.auto.beetnodes

#/////////////// 🌵 Funciones (1) 🌵 ///////////////#

function stats { ### Stats del servidor
    if [ ${SERVER_MEMORY} != 0 ]; then
        echo -e '\e[92m* \e[39m[\e[94mINFO\e[39m] \e[4m\e[95mStats\e[39m\e[0m'
        echo
        sleep 1.5
        echo -e '\e[92m* \e[39m[\e[92mSTATS\e[39m] RAM -> \e[4m\e[95m'${SERVER_MEMORY}
        sleep 1
        echo -e '\e[92m* \e[39m[\e[92mSTATS\e[39m] CLUSTER -> \e[4m\e[95m'${P_SERVER_LOCATION}
        sleep 1
        echo -e '\e[92m* \e[39m[\e[92mSTATS\e[39m] ID -> \e[4m\e[95m'${P_SERVER_UUID}
        sleep 1
        echo -e '\e[92m* \e[39m[\e[92mSTATS\e[39m] IP LOCAL -> \e[4m\e[95m'${SERVER_IP}
        sleep 1
        echo -e '\e[92m* \e[39m[\e[92mSTATS\e[39m] PUERTO -> \e[4m\e[95m'${SERVER_PORT}
    else
        echo -e '\e[92m* \e[39m[\e[94mINFO\e[39m] \e[4m\e[95mStats\e[39m\e[0m'
        echo
        sleep 1.5
        echo -e '\e[92m* \e[39m[\e[92mSTATS\e[39m] RAM -> \e[4m\e[95m'${SERVER_MEMORY}
        sleep 1
        echo -e '\e[92m* \e[39m[\e[92mSTATS\e[39m] CLUSTER -> \e[4m\e[95m'${P_SERVER_LOCATION}
        sleep 1
        echo -e '\e[92m* \e[39m[\e[92mSTATS\e[39m] ID -> \e[4m\e[95m'${P_SERVER_UUID}
        sleep 1
        echo -e '\e[92m* \e[39m[\e[92mSTATS\e[39m] IP LOCAL -> \e[4m\e[95m'${SERVER_IP}
        sleep 1
        echo -e '\e[92m* \e[39m[\e[92mSTATS\e[39m] PUERTO -> \e[4m\e[95m'${SERVER_PORT}
    fi
}

function bienvenida { ### Funcion de bienvenida!
    if [ -f '$FILE_FIRST_START' ]; then
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
            sleep 8
                clear
            sleep 1.5
                stats
            sleep 8
                clear
            touch .first.beetnodes &> /dev/null
    fi
}

function check_instalacion { ### Check instalacion
    if [ -f '$FILE_CUSTOM' ]; then
        echo -e '\e[92m* \e[39m[\e[94mINFO\e[39m] Acabas de iniciar tu servidor, y has seleccionado una instalacion \e[4m\e[95mCustom\e[39m\e[0m!'
            sleep 1.5
        if [ ${EXTRA_PACKAGES} != '' ]; then
            /usr/local/bin/npm install ${EXTRA_PACKAGES} # Instala los paquetes extra
                sleep 1.5
                    echo 'AWA'
        else
            sleep 1.5
                echo 'OWO'
        fi
            if [ -f '$FILE_START_MAINJS' ]; then
                if [ -f /home/container/package.json ]; then /usr/local/bin/npm install; fi; /usr/local/bin/node /home/container/main.js
            elif [ -f '$FILE_START_INDEXJS' ]; then
                if [ -f /home/container/package.json ]; then /usr/local/bin/npm install; fi; /usr/local/bin/node /home/container/index.js
            elif [ -f '$FILE_START_AUTO' ]; then
                if [ -f /home/container/package.json ]; then /usr/local/bin/npm install; fi; /usr/local/bin/npm start
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
                                    echo -e '\e[39m 3 | \e[95m➟\e[39m  Automatico (npm start)'
                                        sleep 0.5
                                    echo -e '\e[39m 4 | \e[95m➟\e[39m  Archivo Custom'
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
                                                        touch .start.auto.beetnodes &> /dev/null
                                                            if [ -f /home/container/package.json ]; then /usr/local/bin/npm install; fi; /usr/local/bin/npm start
                                                                exit; break;;
                                                    [4]* )
                                                        sleep 1.5
                                                            clear
                                                        sleep 1
                                                            echo -e '\e[92m* \e[39m[\e[94mINFO\e[39m] Cual es el archivo de inicio de tu bot personalizado?'
                                                                echo
                                                                    sleep 0.5
                                                                read -p '         |>>>| ' ARCHIVO_INICIO
                                                                    sleep 0.2
                                                                        echo -e '\e[92m* \e[39m[\e[94mINFO\e[39m] Iniciando servidor...'
                                                                            echo
                                                                                if [ -f /home/container/package.json ]; then /usr/local/bin/npm install; fi; /usr/local/bin/node /home/container/$ARCHIVO_INICIO
                                                            exit; break;;
                                                    * )
                                                        sleep 1.5
                                                            clear
                                                        echo -e '\e[92m* \e[39m[\e[91mERROR\e[39m] Esta no es una opcion valida!'
                                                esac
                                done
            fi
    elif [ -f '$FILE_TANJIRO' ]; then
        echo -e '\e[92m* \e[39m[\e[94mINFO\e[39m] Acabas de iniciar tu servidor, y has seleccionado \e[4m\e[95mTanjiro\e[39m\e[0m!'
            sleep 3
                    echo
            sleep 2
                clear
        echo -e '\e[92m* \e[39m[\e[94mINFO\e[39m] Iniciando servidor...'
            sleep 2.5
                echo
                    if [ -f /home/container/package.json ]; then /usr/local/bin/npm install; fi; /usr/local/bin/npm start
    elif [ -f '$FILE_ALCATRAZ' ]; then
        echo -e '\e[92m* \e[39m[\e[94mINFO\e[39m] Acabas de iniciar tu servidor, y has seleccionado \e[4m\e[95mAlcatraz\e[39m\e[0m!'
            sleep 3
                    echo
            sleep 2
                clear
        echo -e '\e[92m* \e[39m[\e[94mINFO\e[39m] Iniciando servidor...'
            sleep 2.5
                echo
                    if [ -f /home/container/package.json ]; then /usr/local/bin/npm install; fi; /usr/local/bin/npm start
    elif [ -f '$FILE_ALCATRAZ_V2' ]; then
        echo -e '\e[92m* \e[39m[\e[94mINFO\e[39m] Acabas de iniciar tu servidor, y has seleccionado \e[4m\e[95mAlcatrazV2\e[39m\e[0m!'
            sleep 3
                    echo
            sleep 2
                clear
        echo -e '\e[92m* \e[39m[\e[94mINFO\e[39m] Iniciando servidor...'
            sleep 2.5
                echo
                    if [ -f /home/container/package.json ]; then /usr/local/bin/npm install; fi; /usr/local/bin/npm start
    elif [ -f '$FILE_ASTERIA' ]; then
        echo -e '\e[92m* \e[39m[\e[94mINFO\e[39m] Acabas de iniciar tu servidor, y has seleccionado \e[4m\e[95mAsteria\e[39m\e[0m!'
            sleep 3
                    echo
            sleep 2
                clear
        echo -e '\e[92m* \e[39m[\e[94mINFO\e[39m] Iniciando servidor...'
            sleep 2.5
                echo
                    if [ -f /home/container/package.json ]; then /usr/local/bin/npm install; fi; /usr/local/bin/npm start
    elif [ -f '$FILE_DOGEBOT' ]; then
        echo -e '\e[92m* \e[39m[\e[94mINFO\e[39m] Acabas de iniciar tu servidor, y has seleccionado \e[4m\e[95mDogeBot\e[39m\e[0m!'
            sleep 3
                    echo
            sleep 2
                clear
        echo -e '\e[92m* \e[39m[\e[94mINFO\e[39m] Iniciando servidor...'
            sleep 2.5
                echo
                    if [ -f /home/container/package.json ]; then /usr/local/bin/npm install; fi; /usr/local/bin/npm start
    elif [ -f '$FILE_NK_BOT' ]; then
        echo -e '\e[92m* \e[39m[\e[94mINFO\e[39m] Acabas de iniciar tu servidor, y has seleccionado \e[4m\e[95mNk-Bot\e[39m\e[0m!'
            sleep 3
                    echo
            sleep 2
                clear
        echo -e '\e[92m* \e[39m[\e[94mINFO\e[39m] Iniciando servidor...'
            sleep 2.5
                echo
                    if [ -f /home/container/package.json ]; then /usr/local/bin/npm install; fi; /usr/local/bin/npm start
    elif [ -f '$FILE_SHADOW_BOT_V3' ]; then
        echo -e '\e[92m* \e[39m[\e[94mINFO\e[39m] Acabas de iniciar tu servidor, y has seleccionado \e[4m\e[95mShadowBotV3\e[39m\e[0m!'
            sleep 3
                    echo
            sleep 2
                clear
        echo -e '\e[92m* \e[39m[\e[94mINFO\e[39m] Iniciando servidor...'
            sleep 2.5
                echo
                    if [ -f /home/container/package.json ]; then /usr/local/bin/npm start; fi;
    elif [ -f '$FILE_FXBOT_V83_2' ]; then
        echo -e '\e[92m* \e[39m[\e[94mINFO\e[39m] Acabas de iniciar tu servidor, y has seleccionado \e[4m\e[95mFxBotV83.2\e[39m\e[0m!'
            sleep 3
                    echo
            sleep 2
                clear
        echo -e '\e[92m* \e[39m[\e[94mINFO\e[39m] Iniciando servidor...'
            sleep 2.5
                echo
                    if [ -f /home/container/package.json ]; then /usr/local/bin/npm start; fi;
    elif [ -f '$FILE_DYLUX_BOT' ]; then
        echo -e '\e[92m* \e[39m[\e[94mINFO\e[39m] Acabas de iniciar tu servidor, y has seleccionado \e[4m\e[95mDylux-Bot\e[39m\e[0m!'
            sleep 3
                    echo
            sleep 2
                clear
        echo -e '\e[92m* \e[39m[\e[94mINFO\e[39m] Iniciando servidor...'
            sleep 2.5
                echo
                        if [ -f /home/container/package.json ]; then /usr/local/bin/npm install; fi; /usr/local/bin/npm start
    elif [ -f '$FILE_WABOT_AQ' ]; then
        echo -e '\e[92m* \e[39m[\e[94mINFO\e[39m] Acabas de iniciar tu servidor, y has seleccionado \e[4m\e[95mWaBot-AQ\e[39m\e[0m!'
            sleep 3
                    echo
            sleep 2
                clear
        echo -e '\e[92m* \e[39m[\e[94mINFO\e[39m] Iniciando servidor...'
            sleep 2.5
                echo
                        if [ -f /home/container/package.json ]; then /usr/local/bin/npm install; fi; /usr/local/bin/npm start
    elif [ -f '$FILE_GAMES_WABOT' ]; then
        echo -e '\e[92m* \e[39m[\e[94mINFO\e[39m] Acabas de iniciar tu servidor, y has seleccionado \e[4m\e[95mGames-WaBot\e[39m\e[0m!'
            sleep 3
                    echo
            sleep 2
                clear
        echo -e '\e[92m* \e[39m[\e[94mINFO\e[39m] Iniciando servidor...'
            sleep 2.5
                echo
                        if [ -f /home/container/package.json ]; then /usr/local/bin/npm install; fi; /usr/local/bin/npm start
    elif [ -f '$FILE_TERMUX_WABOT_ECONOMY' ]; then
        echo -e '\e[92m* \e[39m[\e[94mINFO\e[39m] Acabas de iniciar tu servidor, y has seleccionado \e[4m\e[95mTermux-WaBot-Economy\e[39m\e[0m!'
            sleep 3
                    echo
            sleep 2
                clear
        echo -e '\e[92m* \e[39m[\e[94mINFO\e[39m] Iniciando servidor...'
            sleep 2.5
                echo
                        if [ -f /home/container/package.json ]; then /usr/local/bin/npm install; fi; /usr/local/bin/npm start
    elif [ -f '$FILE_BABY_BECHOSO_BOT' ]; then
        echo -e '\e[92m* \e[39m[\e[94mINFO\e[39m] Acabas de iniciar tu servidor, y has seleccionado \e[4m\e[95mBabyBechoso\e[39m\e[0m!'
            sleep 3
                    echo
            sleep 2
                clear
        echo -e '\e[92m* \e[39m[\e[94mINFO\e[39m] Iniciando servidor...'
            sleep 2.5
                echo
                    /usr/local/bin/npm install yt-search;
                    /usr/local/bin/npm install google-it;
                    /usr/local/bin/npm install g-i-s;
                        if [ -f /home/container/package.json ]; then /usr/local/bin/npm install; fi; /usr/local/bin/npm start
    elif [ -f '$FILE_FGBOT_BOT_V4' ]; then
        echo -e '\e[92m* \e[39m[\e[94mINFO\e[39m] Acabas de iniciar tu servidor, y has seleccionado \e[4m\e[95mFgBotV4\e[39m\e[0m!'
            sleep 3
                    echo
            sleep 2
                clear
        echo -e '\e[92m* \e[39m[\e[94mINFO\e[39m] Iniciando servidor...'
            sleep 2.5
                echo
                        if [ -f /home/container/package.json ]; then /usr/local/bin/npm install; fi; /usr/local/bin/npm start
    elif [ -f '$FILE_TURBO_BOT_V3' ]; then
        echo -e '\e[92m* \e[39m[\e[94mINFO\e[39m] Acabas de iniciar tu servidor, y has seleccionado \e[4m\e[95mTurboBot-V3\e[39m\e[0m!'
            sleep 3
                    echo
            sleep 2
                clear
        echo -e '\e[92m* \e[39m[\e[94mINFO\e[39m] Iniciando servidor...'
            sleep 2.5
                echo
                        if [ -f /home/container/package.json ]; then /usr/local/bin/npm install; fi; /usr/local/bin/npm start
    elif [ -f '$FILE_BOTZAZA' ]; then
        echo -e '\e[92m* \e[39m[\e[94mINFO\e[39m] Acabas de iniciar tu servidor, y has seleccionado \e[4m\e[95mBotzaza\e[39m\e[0m!'
            sleep 3
                    echo
            sleep 2
                clear
        echo -e '\e[92m* \e[39m[\e[94mINFO\e[39m] Iniciando servidor...'
            sleep 2.5
                echo
                        if [ -f /home/container/package.json ]; then /usr/local/bin/npm install; fi; /usr/local/bin/npm start
    elif [ -f '$FILE_BADBOY' ]; then
        echo -e '\e[92m* \e[39m[\e[94mINFO\e[39m] Acabas de iniciar tu servidor, y has seleccionado \e[4m\e[95mBadBoy\e[39m\e[0m!'
            sleep 3
                    echo
            sleep 2
                clear
        echo -e '\e[92m* \e[39m[\e[94mINFO\e[39m] Iniciando servidor...'
            sleep 2.5
                echo
                        if [ -f /home/container/package.json ]; then /usr/local/bin/npm install; fi; /usr/local/bin/npm start
    elif [ -f '$FILE_SHINIGAMI' ]; then
        echo -e '\e[92m* \e[39m[\e[94mINFO\e[39m] Acabas de iniciar tu servidor, y has seleccionado \e[4m\e[95mShinigami\e[39m\e[0m!'
            sleep 3
                    echo
            sleep 2
                clear
        echo -e '\e[92m* \e[39m[\e[94mINFO\e[39m] Iniciando servidor...'
            sleep 2.5
                echo
                        if [ -f /home/container/package.json ]; then /usr/local/bin/npm install; fi; /usr/local/bin/npm start
    elif [ -f '$FILE_TZY' ]; then
        echo -e '\e[92m* \e[39m[\e[94mINFO\e[39m] Acabas de iniciar tu servidor, y has seleccionado \e[4m\e[95mTzy\e[39m\e[0m!'
            sleep 3
                    echo
            sleep 2
                clear
        echo -e '\e[92m* \e[39m[\e[94mINFO\e[39m] Iniciando servidor...'
            sleep 2.5
                echo
                        if [ -f /home/container/package.json ]; then /usr/local/bin/npm install; fi; /usr/local/bin/npm start
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
