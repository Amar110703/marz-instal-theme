# auth.sh

# Array untuk menyimpan token-token yang valid
valid_tokens=("marz001" "kyeestore" "public_token_marz")

# Fungsi untuk melakukan otentikasi pengguna
authenticate() {
  local authenticated=false
  echo -e "Masukkan token:"
  read -r USER_TOKEN

  # Memeriksa apakah token pengguna cocok dengan salah satu dari token-token valid
  for token in "${valid_tokens[@]}"; do
    if [ "$USER_TOKEN" == "$token" ]; then
      authenticated=true
      break
    fi
  done

  if ! $authenticated; then
    echo -e "${MERAH}Token tidak valid. Keluar.${NC}"
    exit 1
  fi
}
