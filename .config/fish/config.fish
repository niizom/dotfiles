set -gx TERM xterm-256color

# aliases
alias lg lazygit
# alias to save dotfiles with "dotfiles"" keyword
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# set color for the valid command
set fish_color_command blue

# remove fish greeting
set -U fish_greeting ""

# add homebrew to the path
set -gx PATH /opt/homebrew/bin $PATH

# set default editor to nvim
set -gx EDITOR nvim

# NodeJS Allows run binaries inside the node_modules like npx
set -gx PATH node_modules/.bin $PATH

# theme
set -g theme_color_scheme terminal-dark
set -g fish_prompt_pwd_dir_length 1
set -g theme_display_user yes
set -g theme_hide_hostname no
set -g theme_hostname always

command -qv nvim && alias vim nvim
function vim -d 'Run neovim instead of vim if nvim is installed'
    if command -q nvim
        command nvim $argv
    else
        command vim $argv
    end
end

# import eza config
switch (uname)
    case Darwin
        source (dirname (status --current-filename))/config-osx.fish
    case Linux
        source (dirname (status --current-filename))/config-linux.fish
        # case '*'
        #     source (dirname (status --current-filename))/config-windows.fish
end
