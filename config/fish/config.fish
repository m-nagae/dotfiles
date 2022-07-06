# peco
function fish_user_key_bindings
    bind \cr 'peco_select_history (commandline -b)'
end

# asdf
source /usr/local/opt/asdf/libexec/asdf.fish

# Starship
eval (starship init fish)
