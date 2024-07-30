#!/system/bin/bash

# @kayeviolet
CYAN='\033[1;36m'
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
MAGENTA='\033[0;35m'
WHITE='\033[1;37m'
BLINK='\033[5m'
NC='\033[0m'
DIR=$(dirname "$0")
export PATH="$PATH:$DIR"

DEBLOAT_SH="$DIR/files/debloat.sh"
OPTIMIZE_SH="$DIR/files/optimize.sh"
APPOPS_SH="$DIR/files/appops.sh"
COMPILE_SH="$DIR/files/compile.sh"
CACHE_SH="$DIR/files/cache.sh"
DEEPPS_SH="$DIR/files/deepps.sh"

grant_execution_permission() {
    chmod +x "$1"
    echo "Permissão de execução concedida para ${CYAN}$1${NC}"
}

grant_execution_permissions() {
    for file in "$DEBLOAT_SH" "$OPTIMIZE_SH" "$COMPILE_SH" "$APPOPS_SH"; do
        grant_execution_permission "$file"
    done
}

execute_script() {
    clear
    echo "${CYAN}Executando ${WHITE}$1...${NC}"; sleep 1
    clear
    source "$1"
}

execute_scripts() {
    scripts=("$DEBLOAT_SH" "$OPTIMIZE_SH" "$APPOPS_SH" "$COMPILE_SH" "$CACHE_SH")

    for script in "${scripts[@]}"; do
        execute_script "$script"
        display
    done
}

display() {
    clear
    echo "${BLINK}${RED}feito${BLUE}...${NC}"
    sleep 1
    clear
    echo "${BLINK}${GREEN}feito${MAGENTA}...${NC}"
    sleep 1
    clear
}

grant_execution_permissions
execute_scripts
echo "\n${GREEN}[!]${MAGENTA} deepapps.sh é uma opção separado e não será executado em conjunto com as demais funções deste script${NC}"
