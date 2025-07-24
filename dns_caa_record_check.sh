#!/bin/bash

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

# Function to check CAA for a single domain
check_caa() {
    DOMAIN=$1
    echo -e "${CYAN}🔍 Checking CAA for: $DOMAIN${NC}"
    CAA_RECORD=$(dig CAA "$DOMAIN" +short)

    if [ -z "$CAA_RECORD" ]; then
        echo -e "${RED}[-] No CAA record found for $DOMAIN${NC}\n"
    else
        echo -e "${GREEN}[+] CAA record(s) for $DOMAIN:${NC}"
        echo "$CAA_RECORD" | while read -r line; do
            echo -e "${GREEN}    - $line${NC}"
        done
        echo ""
    fi
}

# Main
if [ "$1" == "-f" ] && [ -n "$2" ]; then
    FILE=$2
    if [ ! -f "$FILE" ]; then
        echo -e "${RED}[!] File not found: $FILE${NC}"
        exit 1
    fi
    while IFS= read -r domain || [ -n "$domain" ]; do
        check_caa "$domain"
    done < "$FILE"
elif [ -n "$1" ]; then
    check_caa "$1"
else
    echo -e "${RED}[!] Usage:${NC} $0 <domain>  OR  $0 -f subdomains.txt"
    exit 1
fi
