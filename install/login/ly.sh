sudo mkdir -p /etc/ly

if [ ! -f /etc/ly/config.ini ]; then
  cat <<EOF | sudo tee /etc/ly/config.ini
# Fast, minimal config
animation = none
hide_borders = true
hide_f1_commands = true
asterisk = true
save = true
save_file = /etc/ly/save
load = true

# Autologin
auto_login_service = ly-autologin
autologin = true
autologin_user = $USER
autologin_session = hyprland-uwsm
EOF
fi

sudo systemctl start ly.service

