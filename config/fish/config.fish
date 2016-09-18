# nodebrew
if not test -d ~/.nodebrew/src
    mkdir -p ~/.nodebrew/src
    set -x PATH $PATH $HOME/.nodebrew/current/bin
end

# peco
function fish_user_key_bindings
    bind \cr 'peco_select_history (commandline -b)'
end
