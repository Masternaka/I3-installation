# Autostart applications

# Configuration des écrans (remplacer par la configuration de vos écrans) (installer arandr pour gérer la configuration des écrans)
#xrandr --output HDMI-1 --primary --mode 1920x1080 --rate 60 --output eDP-1 --mode 1920x1080 --right-of HDMI-1

# Attendre 2 secondes pour que le système ait le temps de configurer les écrans
sleep 2

# Active Polybar (barre de statut)
~/.config/i3/polybar/polybar-i3 &

# Active le tiling automatique (gestion du tiling)
autotiling &

# Active le polkit (gestionnaire de permissions)
lxpolkit &

# Active le dunst (gestionnaire de notifications)
dunst -config ~/.config/i3/dunst/dunstrc &

# Active le picom (compositor)
picom --config ~/.config/i3/picom/picom.conf --animations -b &

# Active le fond d'écran (remplacer par le fond d'écran de votre choix)
feh --bg-fill ~/.config/i3/wallpaper/wallhaven-yqjvw7_3440x1440.png &

# Active le sxhkd (gestionnaire de raccourcis)
pkill -x sxhkd
sxhkd -c ~/.config/i3/sxhkd/sxhkdrc &
