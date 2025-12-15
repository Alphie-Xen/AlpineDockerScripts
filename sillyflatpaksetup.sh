apk add flatpak
doas apk add gnome-software-plugin-flatpak
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

echo 'install sober?'
run = read

if ["$run" = "y"] then
flatpak install flathub org.vinegarhq.Sober
else
echo 'done'
fi
