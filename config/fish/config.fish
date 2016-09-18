# anyenv
set -x PATH $PATH $HOME/.anyenv/bin
status --is-interactive; and source (anyenv init -|psub)

# peco
function fish_user_key_bindings
    bind \cr 'peco_select_history (commandline -b)'
end
