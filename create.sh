sudo apt install neofetch hsetroot flameshot -y
# rofi picom

#? --- i3-gaps ---
#? https://github.com/Airblader/i3/wiki/Building-from-source
sudo apt install meson ninja-build dh-autoreconf libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev xcb libxcb1-dev libxcb-icccm4-dev libyajl-dev libev-dev libxcb-xkb-dev libxcb-cursor-dev libxkbcommon-dev libxcb-xinerama0-dev libxkbcommon-x11-dev libstartup-notification0-dev libxcb-randr0-dev libxcb-xrm0 libxcb-xrm-dev libxcb-shape0 libxcb-shape0-dev -y
mkdir -p ~/tmp
git clone https://www.github.com/Airblader/i3 ~/tmp/i3-gaps

mkdir -p ~/tmp/i3-gaps/build
meson ~/tmp/i3-gaps/ ~/tmp/i3-gaps/build
sudo ninja install -C ~/tmp/i3-gaps/build/
#? --- i3-gaps ---

#? --- install alacritty latest version
sudo apt purge rustc -y
sudo apt autoremove -y
# remove outdated existing versions of rust
sudo apt install cmake pkg-config libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev libxkbcommon-dev python3  -y
echo "f"
read
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | shd
source ~/.bashrc
echo 'source $HOME/.cargo/env' >> ~/.bashrc
source $HOME/.cargo/env
rustup update stable
cargo install alacritty
#? --- install alacritty latest version

sudo apt install gdebi-core
wget -O code.deb "https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64"
sudo gdebi code.deb

sudo apt install firefox-esr  -y

curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null
sudo apt update
sudo apt install gh

sudo apt-get install apt-file -y && sudo apt-file update
echo 'alias pkgfind="apt-file search"' >> ~/.bashrc
echo 'alias utar="tar -xvzf"' >> ~/.bashrc

git config --global user.email "liam12312390@gmail.com"
git config --global user.name "liaml"

source ~/.bashrc

#? --- fonts (JetBrainsMono.zip)
wget -L https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/JetBrainsMono.zip
sudo apt install zip unzip
mkdir -p ~/.local/share/fonts/NerdFonts
unzip -o JetBrainsMono.zip -d ~/.local/share/fonts/NerdFonts
fc-cache -f -v
# fc-list | grep "Nerd" 
#? --- fonts (JetBrainsMono.zip)

# sudo apt install task-lxqt-desktop -y
# sudo apt install task-gnome-desktop -y

#startx