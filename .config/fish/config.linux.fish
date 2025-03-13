if type -q eza
    alias l "eza -l --icons"
    alias ll "eza -a -l --icons"
    alias ls "eza -g"
    alias la "eza -g -a --icons"
    alias lt "eza --tree --level=2 --ignore-glob='node_modules' --long --icons"
end
