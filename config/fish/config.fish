# nodebrew
if not test -d ~/.nodebrew/src
    mkdir -p ~/.nodebrew/src
end
set -x PATH $PATH $HOME/.nodebrew/current/bin

# peco
function fish_user_key_bindings
    bind \cr 'peco_select_history (commandline -b)'
end

# direnv
eval (direnv hook fish)
set -x EDITOR vim
