if status is-interactive
    # Commands to run in interactive sessions can go here

    # asdf
    source /opt/homebrew/opt/asdf/libexec/asdf.fish

    # Homebrew
    eval (/opt/homebrew/bin/brew shellenv)

    # Starship
	eval (starship init fish)

    # peco
    function fish_user_key_bindings
        bind \cr 'peco_select_history (commandline -b)'
    end
end
