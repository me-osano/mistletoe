if [[ -n ${MISTLETOE_ONLINE_INSTALL:-} ]]; then
  # Install build tools
  sudo pacman -S --needed --noconfirm base-devel

  # Backup existing pacman configuration
  sudo mv /etc/pacman.conf /etc/pacman.conf.backup
  sudo mv /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.backup
  
  # Configure pacman
  sudo cp -f ~/.local/share/mistletoe/default/pacman/pacman.conf /etc/pacman.conf
  sudo cp -f ~/.local/share/mistletoe/default/pacman/mirrorlist /etc/pacman.d/mirrorlist

  # Refresh all repos
  sudo pacman -Syu --noconfirm
fi