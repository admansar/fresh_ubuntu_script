
sudo apt-get update
sudo apt install -y curl wget git vim g++ clang nodejs ca-certificates curl ffmpeg aptitude zsh python3.10-venv python3-pip build-essential checkinstall libffi-dev python2-dev python2 python-dev-is-python3  libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev xclip npm -y
sudo ubuntu-drivers install
sudo apt-get remove docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc -y
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin docker-compose-plugin nvidia-container-toolkit -y
sudo snap install vlc
sudo snap install code --classic
curl -fsS https://dl.brave.com/install.sh | sh
sudo aptitude update
sudo aptitude upgrade -y
sudo snap refresh


sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


echo installation done, please reboot
