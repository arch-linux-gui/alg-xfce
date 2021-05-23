tput setaf 2
echo "Enabling Printing Services..."
tput sgr0


cd airootfs/etc/systemd/system/

mkdir printer.target.wants
ln -sv /usr/lib/systemd/system/cups.service printer.target.wants/cups.service

ln -sv /usr/lib/systemd/system/cups.socket sockets.target.wants/cups.socket

ln -sv /usr/lib/systemd/system/cups.path multi-user.target.wants/cups.path
