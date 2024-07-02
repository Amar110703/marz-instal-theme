#!/bin/bash

# Definisi warna
BIRU='\033[0;34m'       
MERAH='\033[0;31m'
HIJAU='\033[0;32m'
KUNING='\033[0;33m'
NC='\033[0m'

initial_hash="afedb337e266fad00617d9f1ed09feb4882f0342d7a79cfa151a4082a9f6a87d"

echo "Masukkan token:"
read input_text

# Menghasilkan hash dari teks dengan menggunakan SHA-256
hashed_input_text=$(echo -n "$input_text" | sha256sum | awk '{print $1}')

echo "Nilai hashed_input_text: $hashed_input_text"
echo "Nilai initial_hash: $initial_hash"

if [ "$hashed_input_text" = "$initial_hash" ]; then
    echo "Token valid. Akses diberikan."
else
    echo "Token tidak valid. Akses ditolak."
fi

# Fungsi untuk menampilkan pesan selamat datang
display_welcome() {
  echo -e ""
  echo -e "${BIRU}+----------------------------------------------------+${NC}"
  echo -e "${BIRU}|                     SAMBUTAN                       |${NC}"
  echo -e "${BIRU}+----------------------------------------------------+${NC}"
  echo -e "${BIRU}|                                                    |${NC}"
  echo -e "${BIRU}|   SELAMAT DATANG DI SCRIPT AUTO INSTAL             |${NC}"
  echo -e "${BIRU}|            YANG DIBUAT OLEH MARZ OFFC              |${NC}"
  echo -e "${BIRU}|                                                    |${NC}"
  echo -e "${BIRU}+----------------------------------------------------+${NC}"
  echo -e "${BIRU}|                   PERINGATAN                       |${NC}"
  echo -e "${BIRU}+----------------------------------------------------+${NC}"
  echo -e "${BIRU}|                                                    |${NC}"
  echo -e "${BIRU}|        JANGAN PERNAH MENJUAL SCRIPT INI            |${NC}"
  echo -e "${BIRU}|                                                    |${NC}"
  echo -e "${BIRU}+--------------+-------------------+-----------------+${NC}"
  echo -e "${BIRU}|    WhatsApp  |      Youtube      |    Creadits     |${NC}"
  echo -e "${BIRU}+--------------+-------------------+-----------------+${NC}"
  echo -e "${BIRU}|              |                   |                 |${NC}"
  echo -e "${BIRU}| 085960349812 | @MARZ OFFICIAL001 |  MARZ OFFICIAL  |${NC}"
  echo -e "${BIRU}| 083854703793 |                   |                 |${NC}"
  echo -e "${BIRU}|              |                   |                 |${NC}"
  echo -e "${BIRU}+--------------+-------------------+-----------------+${NC}"
  echo -e ""
  echo -e ""
  sleep 10
}


# Fungsi untuk menginstal tema
install_theme() {
  while true; do
    clear
    echo -e "                                                       "
    echo -e "${BIRU}[+] =============================================== [+]${NC}"
    echo -e "${BIRU}[+]                   SELECT THEME                 [+]${NC}"
    echo -e "${BIRU}[+] =============================================== [+]${NC}"
    echo -e "                                                       "
    echo -e "PILIH THEME YANG INGIN DI INSTALL"
    echo "1. 𝚂𝚃𝙴𝙻𝙻𝙰𝚁"
    echo "2. 𝙱𝙸𝙻𝙻𝙸𝙽𝙶"
    echo "3. 𝙴𝙽𝙸𝙶𝙼𝙰"
    echo "4. 𝚄𝙽𝙸𝚇 (𝙴𝚁𝙾𝚁)"
    echo "x. 𝙺𝙴𝙼𝙱𝙰𝙻𝙸"
    echo -e "masukan pilihan (1/2/3/x) :"
    read -r SELECT_THEME
    case "$SELECT_THEME" in
      1)
        THEME_URL=$(echo -e "\x68\x74\x74\x70\x73\x3A\x2F\x2F\x67\x69\x74\x68\x75\x62\x2E\x63\x6F\x6D\x2F\x44\x49\x54\x5A\x5A\x31\x31\x32\x2F\x66\x6F\x78\x78\x68\x6F\x73\x74\x74\x2F\x72\x61\x77\x2F\x6D\x61\x69\x6E\x2F\x43\x32\x2E\x7A\x69\x70")
        break
        ;;
      2)
        THEME_URL=$(echo -e "\x68\x74\x74\x70\x73\x3A\x2F\x2F\x67\x69\x74\x68\x75\x62\x2E\x63\x6F\x6D\x2F\x44\x49\x54\x5A\x5A\x31\x31\x32\x2F\x66\x6F\x78\x78\x68\x6F\x73\x74\x74\x2F\x72\x61\x77\x2F\x6D\x61\x69\x6E\x2F\x43\x31\x2E\x7A\x69\x70")
        break
        ;;
      3)
        THEME_URL=$(echo -e "\x68\x74\x74\x70\x73\x3A\x2F\x2F\x67\x69\x74\x68\x75\x62\x2E\x63\x6F\x6D\x2F\x44\x49\x54\x5A\x5A\x31\x31\x32\x2F\x66\x6F\x78\x78\x68\x6F\x73\x74\x74\x2F\x72\x61\x77\x2F\x6D\x61\x69\x6E\x2F\x43\x33\x2E\x7A\x69\x70")
        break
        ;; 
      4)
        THEME_URL=$(echo -e "\x68\x74\x74\x70\x73\x3a\x2f\x2f\x67\x69\x74\x68\x75\x62\x2e\x63\x6f\x6d\x2f\x41\x6d\x61\x72\x31\x31\x30\x37\x30\x33\x2f\x6d\x61\x72\x7a\x2d\x69\x6e\x73\x74\x61\x6c\x2d\x74\x68\x65\x6d\x65\x2f\x72\x61\x77\x2f\x6d\x61\x69\x6e\x2f\x73\x74\x65\x6c\x6c\x65\x72\x2e\x7a\x69\x70")
        break
        ;;
      x)
        return
        ;;
      *)
        echo -e "${MERAH}Pilihan tidak valid, silahkan coba lagi.${NC}"
        ;;
    esac
  done
  
  if [ -e /root/pterodactyl ]; then
    sudo rm -rf /root/pterodactyl
  fi
  wget -q "$THEME_URL"
  sudo unzip -o "$(basename "$THEME_URL")"
  
  if [ "$SELECT_THEME" -eq 1 ]; then
    echo -e "                                                       "
    echo -e "${BIRU}[+] =============================================== [+]${NC}"
    echo -e "${BIRU}[+]                  INSTALLASI THEMA              [+]${NC}"
    echo -e "${BIRU}[+] =============================================== [+]${NC}"
    echo -e "                                                                   "
    sudo cp -rfT /root/pterodactyl /var/www/pterodactyl
    curl -sL https://deb.nodesource.com/setup_16.x | sudo -E bash -
    sudo apt install -y nodejs
    sudo npm i -g yarn
    cd /var/www/pterodactyl
    yarn add react-feather
    php artisan migrate
    yarn build:production
    php artisan view:clear
    sudo rm /root/C2.zip
    sudo rm -rf /root/pterodactyl

    echo -e "                                                       "
    echo -e "${HIJAU}[+] =============================================== [+]${NC}"
    echo -e "${HIJAU}[+]                   INSTALL SUCCESS               [+]${NC}"
    echo -e "${HIJAU}[+] =============================================== [+]${NC}"
    echo -e ""
    sleep 2
    clear
    return

  elif [ "$SELECT_THEME" -eq 2 ]; then
    echo -e "                                                       "
    echo -e "${BIRU}[+] =============================================== [+]${NC}"
    echo -e "${BIRU}[+]                  INSTALLASI THEMA              [+]${NC}"
    echo -e "${BIRU}[+] =============================================== [+]${NC}"
    echo -e "                                                       "
    sudo cp -rfT /root/pterodactyl /var/www/pterodactyl
    curl -sL https://deb.nodesource.com/setup_16.x | sudo -E bash -
    sudo apt install -y nodejs
    npm i -g yarn
    cd /var/www/pterodactyl
    yarn add react-feather
    php artisan billing:install stable
    php artisan migrate
    yarn build:production
    php artisan view:clear
    sudo rm /root/C1.zip
    sudo rm -rf /root/pterodactyl

    echo -e "                                                       "
    echo -e "${HIJAU}[+] =============================================== [+]${NC}"
    echo -e "${HIJAU}[+]                   INSTALL SUCCESS               [+]${NC}"
    echo -e "${HIJAU}[+] =============================================== [+]${NC}"
    echo -e "                                                       "
    sleep 2
    clear
    return

  elif [ "$SELECT_THEME" -eq 4 ]; then
    echo -e "                                                       "
    echo -e "${BIRU}[+] =============================================== [+]${NC}"
    echo -e "${BIRU}[+]                  INSTALLASI THEMA              [+]${NC}"
    echo -e "${BIRU}[+] =============================================== [+]${NC}"
    echo -e "                                                                   "
    sudo cp -rfT /root/pterodactyl /var/www/pterodactyl
    curl -sL https://deb.nodesource.com/setup_16.x | sudo -E bash -
    sudo apt install -y nodejs
    sudo npm i -g yarn
    cd /var/www/pterodactyl
    yarn add react-feather
    php artisan migrate
    yarn build:production
    php artisan view:clear
    sudo rm /root/steller.zip
    sudo rm -rf /root/pterodactyl

    echo -e "                                                       "
    echo -e "${HIJAU}[+] =============================================== [+]${NC}"
    echo -e "${HIJAU}[+]                   INSTALL SUCCESS               [+]${NC}"
    echo -e "${HIJAU}[+] =============================================== [+]${NC}"
    echo -e ""
    sleep 2
    clear
    return

  elif [ "$SELECT_THEME" -eq 3 ]; then
    echo -e "                                                       "
    echo -e "${BIRU}[+] =============================================== [+]${NC}"
    echo -e "${BIRU}[+]                  INSTALLASI THEMA              [+]${NC}"
    echo -e "${BIRU}[+] =============================================== [+]${NC}"
    echo -e "                                                                   "

    # Menanyakan informasi kepada pengguna untuk tema Enigma
    echo -e "${KUNING}Masukkan link untuk 'LINK_BC_BOT': ${NC}"
    read LINK_WA
    echo -e "${KUNING}Masukkan nama untuk 'NAMA_OWNER_PANEL': ${NC}"
    read LINK_GROUP
    echo -e "${KUNING}Masukkan link untuk 'LINK_GC_INFO': ${NC}"
    read LINK_CHNL

    # Mengganti placeholder dengan nilai dari pengguna
    sudo sed -i "s|LINK_WA|$LINK_WA|g" /root/pterodactyl/resources/scripts/components/dashboard/DashboardContainer.tsx
    sudo sed -i "s|LINK_GROUP|$LINK_GROUP|g" /root/pterodactyl/resources/scripts/components/dashboard/DashboardContainer.tsx
    sudo sed -i "s|LINK_CHNL|$LINK_CHNL|g" /root/pterodactyl/resources/scripts/components/dashboard/DashboardContainer.tsx
    
    sudo cp -rfT /root/pterodactyl /var/www/pterodactyl
    curl -sL https://deb.nodesource.com/setup_16.x | sudo -E bash -
    sudo apt install -y nodejs
    sudo npm i -g yarn
    cd /var/www/pterodactyl
    yarn add react-feather
    php artisan migrate
    yarn build:production
    php artisan view:clear
    sudo rm /root/C3.zip
    sudo rm -rf /root/pterodactyl

    echo -e "                                                       "
    echo -e "${HIJAU}[+] =============================================== [+]${NC}"
    echo -e "${HIJAU}[+]                   INSTALL SUCCESS               [+]${NC}"
    echo -e "${HIJAU}[+] =============================================== [+]${NC}"
    echo -e ""
    sleep 5
  else
    echo ""
    echo "Pilihan tidak valid. silahkan pilih 1/2/3/4."
  fi
}

# Fungsi untuk menghapus tema
uninstall_theme() {
  echo -e "                                                       "
  echo -e "${BIRU}[+] =============================================== [+]${NC}"
  echo -e "${BIRU}[+]                    DELETE THEME                 [+]${NC}"
  echo -e "${BIRU}[+] =============================================== [+]${NC}"
  echo -e "                                                       "
  bash <(curl https://raw.githubusercontent.com/Amar110703/marz-instal-theme/main/DELETE%20THEME)
  echo -e "                                                       "
  echo -e "${HIJAU}[+] =============================================== [+]${NC}"
  echo -e "${HIJAU}[+]                 DELETE THEME SUKSES             [+]${NC}"
  echo -e "${HIJAU}[+] =============================================== [+]${NC}"
  echo -e "                                                       "
  sleep 2
  clear
}

# Fungsi untuk menginstal panel
instal_panel() {
  echo -e "                                                       "
  echo -e "${BIRU}[+] =============================================== [+]${NC}"
  echo -e "${BIRU}[+]                    INSTAL PANEL                 [+]${NC}"
  echo -e "${BIRU}[+] =============================================== [+]${NC}"
  echo -e "                                                       "
  bash <(curl -s https://pterodactyl-installer.se)
  bash <(curl -s https://pterodactyl-installer.se)
  echo -e "                                                       "
  echo -e "${HIJAU}[+] =============================================== [+]${NC}"
  echo -e "${HIJAU}[+]                 INSTAL PANEL SUKSES             [+]${NC}"
  echo -e "${HIJAU}[+] =============================================== [+]${NC}"
  echo -e "                                                       "
  sleep 5
}

# Fungsi untuk menginstal otomatis
instal_otomatis() {
echo -e "${BIRU}+-----------------------------------------+${NC}"
echo -e "${BIRU}|            FITUR COMING SOON            |${NC}"
echo -e "${BIRU}+-----------------------------------------+${NC}"
sleep 5
clear
}

# Kata kata hari ini
kata_kata() {
echo -e "KONTOL BAPAK KAU PECAH"
sleep 5
}

#Coming soon
coming_soon() {
echo -e "${BIRU}+-------------------------------------------+${NC}"
echo -e "${BIRU}|           FITUR YANG AKAN HADIR           |${NC}"
echo -e "${BIRU}+-------------------------------------------+${NC}"
echo -e "${BIRU}|            AUTO INSTAL PANEL              |${NC}"
echo -e "${BIRU}|              DDOS ATTACK                  |${NC}"
echo -e "${BIRU}|                SPAM OTP                   |${NC}"
echo -e "${BIRU}|                   DLL                     |${NC}"
echo -e "${BIRU}+-------------------------------------------+${NC}"
echo -e "${BIRU}|         NANTIKAN SAJA FITUR NYA 😁        |${NC}"
echo -e "${BIRU}|         KALAU SEMPAT GW TAMBAHIN 🗿       |${NC}"
echo -e "${BIRU}+-------------------------------------------+${NC}"
sleep 10
}

# Skrip utama
display_welcome
authenticate

while true; do
  clear
  echo -e "${BIRU}+-----------------------------------------+${NC}"
  echo -e "${BIRU}|             SELECT OPTIONS              |${NC}"
  echo -e "${BIRU}+-----------------------------------------+${NC}"
  echo -e "${BIRU}|0. 𝙵𝙸𝚃𝚄𝚁 𝙲𝙾𝙼𝙸𝙽𝙶 𝚂𝙾𝙾𝙽                     |${NC}"
  echo -e "${BIRU}|1. 𝙸𝙽𝚂𝚃𝙻 𝚃𝙷𝙴𝙼𝙴                           |${NC}"
  echo -e "${BIRU}|2. 𝚄𝙸𝙽𝚂𝚃𝙰𝙻 𝚃𝙷𝙴𝙼𝙴                         |${NC}"
  echo -e "${BIRU}|3. 𝙸𝙽𝚂𝚃𝙰𝙻 𝙿𝙰𝙽𝙴𝙻 (𝙱𝙸𝙰𝚂𝙰)                  |${NC}"
  echo -e "${BIRU}|4. 𝙸𝙽𝚂𝚃𝙰𝙻 𝙿𝙰𝙽𝙴𝙻 (𝙾𝚃𝙾𝙼𝙰𝚃𝙸𝚂)               |${NC}"
  echo -e "${BIRU}|5. 𝙺𝙰𝚃𝙰 𝙺𝙰𝚃𝙰 𝙺𝙽𝚃𝙻                        |${NC}"
  echo -e "${BIRU}|x. 𝙴𝚇𝙸𝚃 𝚃𝙾 𝚂𝙲𝚁𝙸𝙿𝚃                        |${NC}"
  echo -e "${BIRU}+-----------------------------------------+${NC}"
  echo -e "${BIRU}|PILIH SALAH SATU (1/2/3/4/5/𝗫) :         |${NC}"
  echo -e "${BIRU}+-----------------------------------------+${NC}"
  read -r MENU_CHOICE
  clear

  case "$MENU_CHOICE" in
    0)
      coming_soon
      ;;
    1)
      install_theme
      ;;
    2)
      uninstall_theme
      ;;
    3)
      instal_panel
      ;;
    4)
      instal_otomatis
      ;;
    5)
      kata_kata
      ;;
    x)
      echo "Keluar dari skrip."
      exit 0
      ;;
    *)
      echo "Pilihan tidak valid, silahkan coba lagi."
      ;;
  esac
done
