if [ "$(plymouth-set-default-theme)" != "mistletoe" ]; then
  sudo cp -r "$HOME/.local/share/mistletoe/default/plymouth" /usr/share/plymouth/themes/mistletoe/
  sudo plymouth-set-default-theme mistletoe
fi
