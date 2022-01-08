#!/bin/bash
# Este es el script de inicio de BeetNodes! Made by HiroBeet! 🦑
#/////////////// 🌵 Funciones (1) 🌵 ///////////////#
function banner { ### Banner principal
echo -e '\e[92m* \e[39m[\e[94mINFO\e[39m] Recuerda que estas en \e[4m\e[95mHiroHost\e[39m\e[0m, feliz hosting!'
}
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
echo -e '\e[92m* \e[39m[\e[92mSTATS\e[39m] RAM -> \e[4m\e[95mILIMITADA'
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
function configuracion { ### Configuracion del servidor
echo -e '\e[92m* \e[39m[\e[94mINFO\e[39m] \e[4m\e[95mConfiguracion\e[39m\e[0m'
echo
sleep 1.5
echo -e '\e[92m* \e[39m[\e[92mSTATS\e[39m] PLATAFORMA -> \e[4m\e[95m'${PLATAFORMA}
sleep 1
echo -e '\e[92m* \e[39m[\e[92mSTATS\e[39m] BOT -> \e[4m\e[95m'${BOT_SELECCIONADO}
}
#/////////////// 🌵 Funciones (2) 🌵 ///////////////#
function custom { ### Custom (BOT) (INSTALACION CUSTOM)
if [-f /home/container/.custom.beetnodes ]; then
    echo -e '\e[92m* \e[39m[\e[94mINFO\e[39m] Felicidades por seleccionar la instalacion \e[4m\e[95mcustom\e[39m\e[0m!'
    exit
}
custom
