cd $(dirname "$BASH_SOURCE")

font_location="$HOME/.local/share/fonts/NerdFonts"
mkdir -p $font_location
find . -type f -name "*.zip" | xargs unzip -d $font_location

fc-cache -f -v