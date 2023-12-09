distrobox stop archbox
distrobox rm archbox
distrobox create -n archbox -i docker.io/library/archlinux:latest --nvidia 
distrobox enter archbox
