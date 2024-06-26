if status is-interactive
    # Commands to run in interactive sessions can go here

    # Homebrew
    eval (/opt/homebrew/bin/brew shellenv)

    # Starship
    starship init fish | source

    # peco
    function fish_user_key_bindings
        bind \cs peco_select_ssh_host
    end
end
