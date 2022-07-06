#!/usr/bin/env bash

# -eo 如果脚本出错，则立即退出执行
set -eo pipefail

VIM_HOME=$HOME/.vim
CONFIG_HOME=$HOME/.config
NVIM_HOME=$CONFIG_HOME/nvim
INSTALL_HOME=$VIM_HOME/install
OS="$(uname -s)"

function platform_dependency() {
    case "$OS" in
        Linux)
            $INSTALL_HOME/apt.sh
            ;;
    esac
}

function install_init() {
    if [ -d $VIM_HOME ]; then
        mv $VIM_HOME $CONFIG_HOME/nvim.$(date +"%Y-%m-%d.%H-%M-%S")
    fi
    mkdir $VIM_HOME
}

function install_vim_init() {
    if [ -f $HOME/.vimrc ]; then
        mv $HOME/.vimrc $HOME/.vimrc.$(date +"%Y-%m-%d.%H-%M-%S")
    fi 
    ln -s $VIM_HOME/xc.vim $HOME/.vimrc
}

function install_nvim_init() {
    if ! [ -d $CONFIG_HOME ]; then
        mkdir -p $CONFIG_HOME
    fi
    if [ -d $NVIM_HOME ]; then
        mv $NVIM_HOME $CONFIG_HOME/nvim.$(date +"%Y-%m-%d.%H-%M-%S")
    fi 
    mkdir $NVIM_HOME
    # ln -s $VIM_HOME $NVIM_HOME
    if [ -f $NVIM_HOME/init.vim ]; then
        rm $NVIM_HOME/init.vim
    fi
    ln -s $VIM_HOME/xc.vim $NVIM_HOME/init.vim
}

function install_vim_plugin() {
    vim -E -c "PlugInstall" -c "qall" 
    # vim -E -c "checkhealth"       \
    # -c "checkhealth"            \
    # -c "checkhealth"            \
    # -c "CocInstall coc-clangd"  \       
    # -c "CocInstall coc-cmake"   \        
    # -c "qall"
}

function install_nvim_plugin() {
    nvim -E -c "PlugInstall" -c "qall" 
    # nvim -E -c "CocInstall coc-clangd" -c "qall"        
    # nvim -E -c "checkhealth" -c "qall"
    # nvim -E -c "CocInstall coc-cmake"  -c "qall"
}



function main() {
    platform_dependency
    if type "vim" >/dev/null 2>&1; then
        install_vim_init
        install_vim_plugin
    fi
    if type "nvim" >/dev/null 2>&1; then
        install_nvim_init
        install_nvim_plugin
    fi
    printf "done"
}
main
