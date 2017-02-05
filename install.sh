#!/usr/bin/env bash
#

# NOTE: Code from VimGalaxy to install

# A guarding function to avoid executing an incompletely downloaded script
guard () {

# Reset
Color_off='\033[0m'       # Text Reset

# Regular Colors
Red='\033[0;31m'          # Red
Blue='\033[0;34m'         # Blue

need_cmd () {
    if ! hash "$1" &>/dev/null; then
        echo -e "${Red}need '$1' (command not found)${Color_off}"
        exit 1
    fi
}

fetch_repo () {
    if [[ -d "$HOME/.VimGalaxy" ]]; then
        git --git-dir "$HOME/.VimGalaxy/.git" pull
        echo -e "${Blue}Successfully update VimGalaxy${Color_off}"
    else
        git clone https://github.com/linkux-it/vimgalaxy.git "$HOME/.VimGalaxy"
        echo -e "${Blue}Successfully clone VimGalaxy${Color_off}"
    fi
}

install_vim () {
    if [[ -f "$HOME/.vimrc" ]]; then
        mv "$HOME/.vimrc" "$HOME/.vimrc_back"
        echo -e "${Blue}BackUp $HOME/.vimrc${Color_off}"
    fi

    if [[ -d "$HOME/.vim" ]]; then
        if [[ "$(readlink $HOME/.vim)" =~ \.VimGalaxy$ ]]; then
            echo -e "${Blue}Installed VimGalaxy for vim${Color_off}"
        else
            mv "$HOME/.vim" "$HOME/.vim_back"
            echo -e "${Blue}BackUp $HOME/.vim${Color_off}"
            ln -s "$HOME/.VimGalaxy" "$HOME/.vim"
            echo -e "${Blue}Installed VimGalaxy for vim${Color_off}"
        fi
    else
        ln -s "$HOME/.VimGalaxy" "$HOME/.vim"
        echo -e "${Blue}Installed VimGalaxy for vim${Color_off}"
    fi
}

install_neovim () {
    if [[ -d "$HOME/.config/nvim" ]]; then
        if [[ "$(readlink $HOME/.config/nvim)" =~ \.VimGalaxy$ ]]; then
            echo -e "${Blue}Installed VimGalaxy for neovim${Color_off}"
        else
            mv "$HOME/.config/nvim" "$HOME/.config/nvim_back"
            echo -e "${Blue}BackUp $HOME/.config/nvim${Color_off}"
            ln -s "$HOME/.VimGalaxy" "$HOME/.config/nvim"
            echo -e "${Blue}Installed VimGalaxy for neovim${Color_off}"
        fi
    else
        ln -s "$HOME/.VimGalaxy" "$HOME/.config/nvim"
        echo -e "${Blue}Installed VimGalaxy for neovim${Color_off}"
    fi
}

uninstall_vim () {
    if [[ -d "$HOME/.vim" ]]; then
        if [[ "$(readlink $HOME/.vim)" =~ \.VimGalaxy$ ]]; then
            rm "$HOME/.vim"
            echo -e "${Blue}Uninstall VimGalaxy for vim${Color_off}"
            if [[ -d "$HOME/.vim_back" ]]; then
                mv "$HOME/.vim_back" "$HOME/.vim"
                echo -e "${Blue}Recover $HOME/.vim${Color_off}"
            fi
        fi
    fi
    if [[ -f "$HOME/.vimrc_back" ]]; then
        mv "$HOME/.vimrc_back" "$HOME/.vimrc"
        echo -e "${Blue}Recover $HOME/.vimrc${Color_off}"
    fi
}

uninstall_neovim () {
    if [[ -d "$HOME/.config/nvim" ]]; then
        if [[ "$(readlink $HOME/.config/nvim)" =~ \.VimGalaxy$ ]]; then
            rm "$HOME/.config/nvim"
            echo -e "${Blue}Uninstall VimGalaxy for neovim${Color_off}"
            if [[ -d "$HOME/.config/nvim_back" ]]; then
                mv "$HOME/.config/nvim_back" "$HOME/.config/nvim"
                echo -e "${Blue}Recover $HOME/.config/nvim${Color_off}"
            fi
        fi
    fi
}

usage () {
    echo "VimGalaxy install script : V 0.1.0-dev"
    echo "    Install VimGalaxy for vim and neovim"
    echo "        curl -sLf https://raw.githubusercontent.com/linkux-it/vimgalaxy/master/install.sh | bash"
    echo "    Install VimGalaxy for vim only or neovim only"
    echo "        curl -sLf https://raw.githubusercontent.com/linkux-it/vimgalaxy/master/install.sh | bash -s -- install vim"
    echo "        or"
    echo "        curl -sLf https://raw.githubusercontent.com/linkux-it/vimgalaxy/master/install.sh | bash -s -- install neovim"
    echo "    Uninstall VimGalaxy"
    echo "        curl -sLf https://raw.githubusercontent.com/linkux-it/vimgalaxy/master/install.sh | bash -s -- uninstall"
}


if [ $# -gt 0 ]
then
    case $1 in
        uninstall)
            uninstall_vim
            uninstall_neovim
            exit 0
            ;;
        install)
            need_cmd 'git'
            fetch_repo
            if [ $# -eq 2 ]
            then
                case $2 in
                    neovim)
                        install_neovim
                        exit 0
                        ;;
                    vim)
                        install_vim
                        exit 0
                esac
            fi
            install_vim
            install_neovim
            exit 0
            ;;
        -h)
            usage
            exit 0
    esac
fi
# if no argv, installer will install VimGalaxy
need_cmd 'git'
fetch_repo
install_vim
install_neovim

# end of guard
}

# download finished fine
guard $@
