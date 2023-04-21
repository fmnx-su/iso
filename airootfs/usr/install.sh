archinstall --silent --disk_layouts /usr/disk.json --config /usr/config.json --creds /usr/creds.json
cp /etc/os-release /mnt/archinstall/etc/os-release
cp /etc/pacman.conf /mnt/archinstall/etc/pacman.conf
mkdir -p /mnt/archinstall/etc/dconf/profile
cp /etc/dconf/profile/user /mnt/archinstall/etc/dconf/profile/user
mkdir -p /mnt/archinstall/etc/dconf/db/local.d
cp /etc/dconf/db/local.d/00-settings /mnt/archinstall/etc/dconf/db/local.d/00-settings
mkdir -p /mnt/archinstall/etc/dconf/profile
cp /etc/dconf/profile/user /mnt/archinstall/etc/dconf/profile/user
cp -a /root/. /mnt/archinstall/home/<USER>
chmod a+rwx -R /mnt/archinstall/home/<USER>
mkdir -p /mnt/archinstall/usr/local/share/backgrounds
cp /usr/local/share/backgrounds/wallpaper.jpg /mnt/archinstall/usr/local/share/backgrounds/wallpaper.jpg
cp /usr/local/share/backgrounds/fmnx-linux.png /mnt/archinstall/usr/local/share/backgrounds/fmnx-linux.png
arch-chroot /mnt/archinstall pacman -R --noconfirm epiphany gnome-music gnome-console
arch-chroot /mnt/archinstall dconf update
sed -i s|/bin/bash|/usr/bin/zsh|g /mnt/archinstall/etc/passwd
sed -i s/3/0/g /mnt/archinstall/boot/loader/loader.conf
arch-chroot -u <USER> /mnt/archinstall go install github.com/ktr0731/evans@latest
arch-chroot -u <USER> /mnt/archinstall go install mvdan.cc/gofumpt@latest
arch-chroot -u <USER> /mnt/archinstall go install github.com/cweill/gotests/gotests@latest
arch-chroot -u <USER> /mnt/archinstall go install github.com/fatih/gomodifytags@latest
arch-chroot -u <USER> /mnt/archinstall go install github.com/josharian/impl@latest
arch-chroot -u <USER> /mnt/archinstall go install github.com/haya14busa/goplay/cmd/goplay@latest
arch-chroot -u <USER> /mnt/archinstall go install github.com/go-delve/delve/cmd/dlv@latest
arch-chroot -u <USER> /mnt/archinstall go install honnef.co/go/tools/cmd/staticcheck@latest
arch-chroot -u <USER> /mnt/archinstall go install golang.org/x/tools/gopls@latest
arch-chroot -u <USER> /mnt/archinstall go install fmnx.ru/dancheg97/fmnx-gen@latest
arch-chroot -u <USER> /mnt/archinstall code --install-extension esbenp.prettier-vscode
arch-chroot -u <USER> /mnt/archinstall code --install-extension ms-azuretools.vscode-docker
arch-chroot -u <USER> /mnt/archinstall code --install-extension ms-vscode-remote.remote-containers
arch-chroot -u <USER> /mnt/archinstall code --install-extension PKief.material-icon-theme
arch-chroot -u <USER> /mnt/archinstall code --install-extension ms-vscode-remote.remote-ssh
arch-chroot -u <USER> /mnt/archinstall code --install-extension redhat.vscode-yaml
arch-chroot -u <USER> /mnt/archinstall code --install-extension golang.Go
arch-chroot -u <USER> /mnt/archinstall code --install-extension mhutchie.git-graph
arch-chroot -u <USER> /mnt/archinstall code --install-extension rangav.vscode-thunder-client
arch-chroot -u <USER> /mnt/archinstall code --install-extension zxh404.vscode-proto3
arch-chroot -u <USER> /mnt/archinstall code --install-extension Dart-Code.flutter
arch-chroot -u <USER> /mnt/archinstall code --install-extension IronGeek.vscode-env
arch-chroot -u <USER> /mnt/archinstall code --install-extension vlanguage.vscode-vlang
arch-chroot -u <USER> /mnt/archinstall code --install-extension rust-lang.rust-analyzer