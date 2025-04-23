if status is-interactive
    # Commands to run in interactive sessions can go here

    # Homebrew
    eval (/opt/homebrew/bin/brew shellenv)

    # Starship
    starship init fish | source

    # zoxide
    zoxide init fish | source

    # Bitwarden SSH Agent
    set -x SSH_AUTH_SOCK /Users/masahiro/.bitwarden-ssh-agent.sock

    # Claude Code
    export PATH="$HOME/.local/bin:$PATH"

end

