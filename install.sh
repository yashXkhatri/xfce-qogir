# Making dirs
mkdir ~/.local/share/themes
mkdir ~/.local/share/icons
mkdir ~/.local/share/fonts

cp -r xfconf ~/.config/xfce4

# Extracting theme and icons
tar -xf Qogir.tar.xz -C ~/.local/share/themes
tar -xf 01-Qogir.tar.xz -C ~/.local/share/icons
unzip ComicShannsMono.zip -d ~/.local/share/fonts

# Refreshing
fc-cache -fv
xfdesktop --reload

# GTK THEME
xfconf-query -c xsettings -p /Net/ThemeName -s "Qogir-Dark"
# XFWM4 THEME
xfconf-query -c xfwm4 -p /general/theme -s "Qogir-Dark"
# Font
xfconf-query -c xsettings -p /Gtk/FontName -s "ComicShannsMono Nerd Font 10"
# MONOSPACE FONT
xfconf-query -c xsettings -p /Gtk/MonospaceFontName -s "ComicShannsMono Nerd Font Mono 10"
# Icon Theme
xfconf-query -c xsettings -p /Net/IconThemeName -s "Qogir-Dark"
# XFCE4-PANEL-PROFILE THEME
xfce4-panel-profiles load Qogir.tar.bz2
xfce4-panel -r

clear

echo "




COMPLETED!! Please logout and
log back in.





"
