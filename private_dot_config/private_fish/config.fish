if status is-interactive
    # Commands to run in interactive sessions can go here

    # Homebrew
    eval (/opt/homebrew/bin/brew shellenv)

    # Starship
    starship init fish | source

    # For bitwarden-ssh-agent
    set -x SSH_AUTH_SOCK /Users/masahiro/.bitwarden-ssh-agent.sock
end

