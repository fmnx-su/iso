pwd := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))

install:
	sudo pacman --noconfirm -Sy qemu-desktop edk2-ovmf archiso archinstall
	yay -Sy --noconfirm meson ninja appimagelauncher
	wget -O balenaEtcher-1.13.1-x64.AppImage https://github.com/balena-io/etcher/releases/download/v1.13.1/balenaEtcher-1.13.1-x64.AppImage

.PHONY: build
build:
	sudo rm -r tmp
	sudo rm -r build
	sudo chmod a+rwx -R .
	mkdir -p tmp
	sudo mkarchiso -v -w tmp -o build .

run:
	run_archiso -i $(pwd)/build/archlinux-$(shell date +"%Y.%m.%d")-x86_64.iso
