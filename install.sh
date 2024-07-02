#!/bin/bash

# Definisi warna
BIRU='\033[0;34m'       
MERAH='\033[0;31m'
HIJAU='\033[0;32m'
KUNING='\033[0;33m'
NC='\033[0m'

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
    echo "1. stellar"
    echo "2. billing"
    echo "3. enigma"
    echo "4. unix"
    echo "x. kembali"
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
        THEME_URL=$(echo -e "/68/74/74/70/73/3a/2f/2f/77/77/77/2e/6d/65/64/69/61/66/69/72/65/2e/63/6f/6d/2f/66/69/6c/65/2f/6b/77/72/72/70/34/71/63/79/68/39/63/77/78/6d/2f/75/6e/69/63/5f/74/68/65/6d/65/2e/7a/69/70/2f/66/69/6c/65")
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
    sudo rm /root/unic theme.zip
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
