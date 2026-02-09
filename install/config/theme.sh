# Set links for Nautilius action icons
sudo ln -snf /usr/share/icons/Adwaita/symbolic/actions/go-previous-symbolic.svg /usr/share/icons/Yaru/scalable/actions/go-previous-symbolic.svg
sudo ln -snf /usr/share/icons/Adwaita/symbolic/actions/go-next-symbolic.svg /usr/share/icons/Yaru/scalable/actions/go-next-symbolic.svg

# Setup theme links
mkdir -p ~/.config/mistletoe/themes
for f in ~/.local/share/mistletoe/themes/*; do ln -nfs "$f" ~/.config/mistletoe/themes/; done

# Set initial theme
mkdir -p ~/.config/mistletoe/current
ln -snf ~/.config/mistletoe/themes/tokyo-night ~/.config/mistletoe/current/theme
ln -snf ~/.config/mistletoe/current/theme/backgrounds/1-scenery-pink-lakeside-sunset-lake-landscape-scenic-panorama-7680x3215-144.png ~/.config/mistletoe/current/background

# Set specific app links for current theme
mkdir -p ~/.config/btop/themes
ln -snf ~/.config/mistletoe/current/theme/btop.theme ~/.config/btop/themes/current.theme

mkdir -p ~/.config/mako
ln -snf ~/.config/mistletoe/current/theme/mako.ini ~/.config/mako/config

# Add managed policy directories for Chromium and Brave for theme changes
sudo mkdir -p /etc/chromium/policies/managed
sudo chmod a+rw /etc/chromium/policies/managed

sudo mkdir -p /etc/brave/policies/managed
sudo chmod a+rw /etc/brave/policies/managed