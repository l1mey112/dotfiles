update-all (){
	sudo apt-file update -y
	sudo apt update -y
	sudo apt upgrade -y
}

alias pkgfind="apt-file search"
alias utar="tar -xvzf"
alias ztar="tar -cvzf"
alias fm="xdg-open"

gpush(){
	git add .
#	if ((test $# -eq 0)); then
#		echo -e "\e[0;32m+ automatic commit message\ee[0m[0m\"
#		git commit -m "$(eval date)"
#	else
		git commit -m "$@"	
#	fi
	git push
}

HOME_DIR="$HOME"
alias copy-from="sudo python3 /usr/local/bin/copysync_filter.py from $HOME_DIR/MREMOTE/ $HOME_DIR/.config/filters_py"
alias copy-to="sudo python3 /usr/local/bin/copysync_filter.py to $HOME_DIR/MREMOTE/ $HOME_DIR/.config/filters_py"

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

