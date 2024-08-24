#!/bin/bash

# Definisi warna
BIRU='\033[0;34m'       
MERAH='\033[0;31m'
HIJAU='\033[0;32m'
KUNING='\033[0;33m'
NC='\033[0m'

bahan_pkg() {
echo -e "${BIRU}=---------------------------------------------${NC}"
echo -e "${KUNING}||MENDOWNLOAD BEBERAPA BAHAN${NC}"
echo -e "${KUNING}||JADI MOHON TUNGGU SEBENTAR${NC}"
echo -e "${BIRU}=---------------------------------------------${NC}"
sleep 3
#untuk termux
pkg update
pkg install vim
#untuk ubuntu
sudo apt update
sudo apt install vim
#untuk fedora
sudo dnf install vim
echo -e "${BIRU}=---------------------------------------------${NC}"
echo -e "${KUNING}||SELESAI${NC}"
echo -e "${BIRU}=---------------------------------------------${NC}"
sleep 3
clear
}

# Daftar nama pengguna premium dalam format heksadesimal
user1=("616d6172" "6275796572" "73656c6c6572")

# Konversi daftar heksadesimal ke format string
prem1=()
for user in "${user1[@]}"; do
  prem1+=("$(echo "$user" | xxd -r -p)")
done

# Daftar nama-nama premium
# PREMIUM_USERS=("marz000" "marz001" "marz002")

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
for user in "${prem1[@]}"; do
  if [ "$username" == "$user" ]; then
    status="VVIP"
    break
  fi
done

echo -e "${BIRU}=-----------------------------------------------${NC}"
echo -e "${KUNING}||MENGECEK STATUS USER${NC}"
echo -e "${BIRU}=-----------------------------------------------${NC}"
sleep 3
echo -e "${BIRU}=-----------------------------------------------${NC}"
echo -e "${KUNING}||SELESAI${NC}"
echo -e "${BIRU}=-----------------------------------------------${NC}"
sleep 3
clear

display_welcome() {
  echo " __  __    _    ____   _____"
  echo "|  \/  |  / \  |  _ \ |__  /"
  echo "| |\/| | / _ \ | |_) |  / /"
  echo "| |  | |/ ___ \|  _ <  / /_"
  echo "|_|  |_/_/   \_\_| \_\/____|"
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
  sleep 5
  clear
}

select_display() {
  while true; do
    echo " __  __    _    ____   _____"
    echo "|  \/  |  / \  |  _ \ |__  /"
    echo "| |\/| | / _ \ | |_) |  / /"
    echo "| |  | |/ ___ \|  _ <  / /_"
    echo "|_|  |_/_/   \_\_| \_\/____|"
    echo -e "${HIJAU}=----------------------------------------------${NC}"
    echo -e "${KUNING}||NAME : $username${NC}"
    echo -e "${KUNING}||STATUS${NC} : ${HIJAU}ONLINE${NC}"
    echo -e "${KUNING}||STATUS USER${NC} : ${HIJAU}$status${NC}"
    echo -e "${HIJAU}=-----------------------------------------------${NC}"
    echo -e "${KUNING}||PAKAILAH SESUKA ANDA${NC}"
    echo -e "${KUNING}||NOTE : PEMBELIAN TOKEN BISA LANGSUNG PM${NC}"
    echo -e "${HIJAU}=-----------------------------------------------${NC}"
    echo -e "${KUNING}||NO : 085960349812${NC}"
    echo -e "${KUNING}||CREADIT : MARZ OFFC${NC}"
    echo -e "${HIJAU}=----------------------------------------------${NC}"
    echo -e "${KUNING}||silahkan pilih salah satu dari menu di bawah ini${NC}"
    echo -e "${HIJAU}=----------------------------------------------${NC}"
    if [ "$status" = "VVIP" ]; then
      echo -e "||1. instal theme (VVIP)"
      echo -e "||2. instal panel (COMING SOON)"
      echo -e "||3. ddos attack (COMING SOON)"
      echo -e "||4. spam otp (COMING SOON)"
    else
      echo -e "||1. instal theme (VVIP) - Tidak tersedia untuk status FREE"
      echo -e "||2. instal panel (COMING SOON)"
      echo -e "||3. ddos attack (COMING SOON)"
      echo -e "||4. spam otp (COMING SOON)"
    fi
    echo -e "||x. exit"
    echo -e "${HIJAU}=----------------------------------------------${NC}"
    read -r select
    case "$select" in
      1)
        if [ "$status" = "VVIP" ]; then
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
          echo -e "${BIRU}=-----------------------------------------------${NC}"
          echo -e "${KUNING}||COMING SOON${NC}"
          echo -e "${BIRU}=-----------------------------------------------${NC}"
          sleep 3
          clear
        ;;
      3)
          echo -e "${BIRU}=-----------------------------------------------${NC}"
          echo -e "${KUNING}||COMING SOON${NC}"
          echo -e "${BIRU}=-----------------------------------------------${NC}"
          sleep 3
          clear
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
    sleep 1
    clear
        ;;
    esac
  done
}

# display
bahan_pkg
display_welcome
select_display
