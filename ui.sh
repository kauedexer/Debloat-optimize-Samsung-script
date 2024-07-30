#!/system/bin/bash

# Cores
YELLOW='\033[1;33m'
CYAN='\033[1;36m'
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
MAGENTA='\033[0;35m'
WHITE='\033[1;37m'
NC='\033[0m'
RISH="$PWD/shizuku/rish"

DEBLOAT_SH="$PWD/files/debloat.sh"
OPTIMIZE_SH="$PWD/files/optimize.sh"
APPOPS_SH="$PWD/files/appops.sh"
COMPILE_SH="$PWD/files/compile.sh"
CACHE_SH="$PWD/files/cache.sh"
DEEPPS_SH="$PWD/files/deepps.sh"

grant_permission() {
    chmod +x "$1"
    echo "$1 permissão de execução concedida."
}
execute_permission() {
    for file in "$DEBLOAT_SH" "$OPTIMIZE_SH" "$COMPILE_SH" "$APPOPS_SH" "$CACHE_SH"; do
        grant_permission "$file"
    done
}

display_done() {
    clear
    echo "${RED}feito${BLUE}...${NC}"
    sleep 1
    clear
    echo "${GREEN}feito${MAGENTA}...${NC}"
    sleep 0.1
}
    
display_menu() {
    clear
    printf "\n\n    ${BLUE}########## ${RED}by @kayeviolet! ${BLUE}##########${NC}\n
    ${WHITE}1) Executar debloat.sh
    2) Executar optimize.sh
    3) Executar appops.sh ${MAGENTA}■${WHITE}
    4) Executar compile.sh
    5) Executar debloat.sh & optimize.sh
    6) Executar ${RED}todos${WHITE} (debloat.sh,optimize.sh,
    appops.sh, compile.sh)
    ${GREEN}--------------------------------------${WHITE}
    7) Clear cache
    8) Deep apps
    9) Reiniciar ${YELLOW}■${WHITE}
    10) Sair
    ${NC}${BLUE}#####################################${NC}
    
    
  ${WHITE}[ ${YELLOW}■${WHITE} ] Importante  [ ${MAGENTA}■${WHITE} ] Pode não funcionar${NC}\n\n"
}   

execute_sh() {
    clear
    echo "${CYAN}>>${NC} Executando ${GREEN}"$1"...${NC}"; sleep 1
    clear
    if [ -n "$PREFIX" ] && [ "$PREFIX" != "/" ]; then
        bash "$RISH" "$1"  
    else
        sh "$1"  
    fi
    display_done
}

execute_permission

while true; do
    display_menu
    echo -n "    Enter your choice: ${NC}"
    read -r choice
     
    case "$choice" in
        1)
            execute_sh "$DEBLOAT_SH"
            ;;
        2)
            execute_sh "$OPTIMIZE_SH"
            ;;
        3)
            execute_sh "$APPOPS_SH"
            ;;
        4)
            execute_sh "$COMPILE_SH"
            ;;
        5)
            execute_sh "$DEBLOAT_SH"
            execute_sh "$OPTIMIZE_SH"
            ;;
        6)
            execute_sh "$DEBLOAT_SH"
            execute_sh "$OPTIMIZE_SH"
            execute_sh "$APPOPS_SH"
            execute_sh "$COMPILE_SH"
            ;;
        7)
            execute_sh "$CACHE_SH"
            ;;
        8)
            execute_sh "$DEEPPS_SH"
            ;;
        9)
            echo "${MAGENTA}Reiniciando...${NC}"; sleep 1; reboot
            ;;
        10)
            echo "${GREEN}Saindo...${NC}"; break
            ;;
        *)
            echo "${RED} Opção inválida!${NC}"; sleep 1
            ;;
    esac
done