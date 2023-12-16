#!/bin/bash

# Ask the user for the type of distrobox container
echo "Which distrobox container do you want to create? (Ubuntu/Fedora/Arch)"
read distro

# Convert the input to lowercase
distro=$(echo "$distro" | tr '[:upper:]' '[:lower:]')

# Define the image based on the distro
case $distro in
  ubuntu)
    image="quay.io/toolbx-images/ubuntu-toolbox:latest"
    ;;
  fedora)
    image="registry.fedoraproject.org/fedora-toolbox:latest"
    ;;
  arch)
    image="quay.io/toolbx-images/archlinux-toolbox:latest"
    ;;
  *)
    echo "Invalid distro selection. Please select Ubuntu, Fedora, or Arch."
    exit 1
    ;;
esac

# Ask the user for the container name
echo "What would you like to name your $distro container?"
read container_name

# Create the container
distrobox-create --name "$container_name" --image "$image" --nvidia

echo "Container $container_name created successfully."
