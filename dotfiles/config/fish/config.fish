if status is-interactive
    # Commands to run in interactive sessions can go here
    set -gx CDPATH $CDPATH . ~ $HOME/code
    # set -gx LDFLAGS "-L/opt/homebrew/opt/llvm/lib"
    set -gx LDFLAGS "-L/opt/homebrew/opt/llvm/lib/c++ -Wl,-rpath,/opt/homebrew/opt/llvm/lib/c++"
    set -gx CPPFLAGS "-I/opt/homebrew/opt/llvm/include"
    set -gx BUN_INSTALL "$HOME/.bun"

    fish_add_path -m $HOME/.config/emacs/bin
    fish_add_path -m $HOME/bin
    fish_add_path /opt/homebrew/opt/ruby/bin
    fish_add_path -m /opt/homebrew/opt/llvm/bin
    fish_add_path $BUN_INSTALL/bin

    alias g=git
    alias reload="source ~/.config/fish/config.fish"
end

starship init fish | source
