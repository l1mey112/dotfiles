update-all (){
	sudo apt-file update -y
	sudo apt update -y
	sudo apt upgrade -y
}

alias pkgfind="apt-file search"
alias utar="tar -xvzf"
alias ztar="tar -cvzf"
alias fm="xdg-open"

HOME_DIR="$HOME"
alias copy-from="sudo copysync_filter.py from $HOME_DIR/MREMOTE/ $HOME_DIR/.config/filters_py"
alias copy-to="sudo copysync_filter.py to $HOME_DIR/MREMOTE/ $HOME_DIR/.config/filters_py"

alias sz="du -sh"

alias c="clear"
alias e="exit"

alias cd="cd-with-ls"
cd-with-ls(){
    if \cd $1; then
    clear
    ls
    fi
}

a(){
    clear
    ls
    printf "\n"
    history 5
}

s(){
    \cd ..
    clear
    ls
}