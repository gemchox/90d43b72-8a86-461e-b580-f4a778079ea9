#!/bin/bash
# Este es el script de inicio de BeetNodes! Made by HiroBeet! 🦑
rm -r mnt/server/* &> /dev/null ### Eliminando todos los archivos actuales!
#/////////////// 🌵 Funciones (1) 🌵 ///////////////#
if [-f /home/container/.custom.beetnodes ]; then
    echo -e '\e[92m* \e[39m[\e[94mINFO\e[39m] Felicidades por seleccionar la instalacion \e[4m\e[95mcustom\e[39m\e[0m!'
