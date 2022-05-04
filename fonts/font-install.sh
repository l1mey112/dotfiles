cd $(dirname "$BASH_SOURCE")

font_location="/usr/share/fonts/NerdFonts"
sudo mkdir -p $font_location
find . -type f -name "*.zip" | xargs sudo unzip -d $font_location

sudo fc-cache -f -v