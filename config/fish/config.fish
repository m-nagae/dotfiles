# nodebrew
if not test -d ~/.nodebrew/src
    mkdir -p ~/.nodebrew/src
end
set -x PATH $PATH $HOME/.nodebrew/current/bin

# peco
function fish_user_key_bindings
    bind \cr 'peco_select_history (commandline -b)'
end

# Typetalk
if test -f ~/Dropbox/typetalk.fish
    source ~/Dropbox/typetalk.fish
end
