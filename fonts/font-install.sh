font_location="$HOME/.local/share/fonts/NerdFonts"
mkdir -p $font_location
find *.zip | xargs unzip -d $font_location

fc-cache -f -v