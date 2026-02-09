sudo mkdir -p /etc/ly

if [ ! -f /etc/ly/config.ini ]; then
  cat <<EOF | sudo tee /etc/ly/config.ini
animation = none
asterisk = true
hide_borders = false
hide_f1_commands = true
clear_password = true
save = true
save_file = /etc/ly/save
load = true

# ==== Autologin (Commented out) ====
# autologin = true
# autologin_user = $USER
# autologin_session = hyprland
EOF
fi

sudo systemctl enable ly.service