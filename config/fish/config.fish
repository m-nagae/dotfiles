set -g fish_user_paths "/usr/local/sbin" $fish_user_paths

# direnv
set -x EDITOR nvim

# peco
function fish_user_key_bindings
    bind \cr 'peco_select_history (commandline -b)'
end

# asdf
source /usr/local/opt/asdf/asdf.fish

# Starship
eval (starship init fish)
