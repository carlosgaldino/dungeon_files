if status is-interactive
    # Commands to run in interactive sessions can go here
    set -gx CDPATH $CDPATH . ~ $HOME/code
    fish_add_path /opt/homebrew/opt/ruby/bin

    alias g=git
    alias reload="source ~/.config/fish/config.fish"
end

starship init fish | source
