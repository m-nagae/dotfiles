set -x EDITOR vim

# peco
function fish_user_key_bindings
    bind \cr 'peco_select_history (commandline -b)'
end

# anyenv
if test -d ~/.anyenv/bin
    set -x PATH $HOME/.anyenv/bin $PATH
    status --is-interactive; and source (anyenv init -|psub)
end
