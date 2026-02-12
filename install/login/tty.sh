# Autologin using tty1
sudo mkdir -p /etc/systemd/system/getty@tty1.service.d

if [ ! -f /etc/systemd/system/getty@tty1.service.d/autologin.conf ]; then
  cat <<EOF | sudo tee /etc/systemd/system/getty@tty1.service.d//autologin.conf
[Service]
ExecStart= 
ExecStart=-/usr/bin/agetty --autologin $USER --noclear %I $TERM
EOF
fi

sudo systemctl daemon-reload
sudo systemctl enable getty@tty1.service