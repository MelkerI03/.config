if status is-interactive
    # ENVIROMENTAL VARIABLES

    set -Ux DRI_PRIMER pci-0000_01_00_0
    
    ## User directories ##
    set XDG_CONFIG_HOME $HOME/.config
    set XDG_CACHE_HOME  $HOME/.cache
    set XDG_DATA_HOME   $HOME/.local/share
    set XDG_STATE_HOME  $HOME/.local/state

    if test $XDG_SESSION_TYPE = "wayland"
      set MOZ_ENABLE_WAYLAND 1
    end

    # Ruby directories
    set GEM_HOME "$(ruby -e 'puts Gem.user_dir')"
    set PATH "$PATH:$GEM_HOME/bin"

    set DELTA_PAGER bat

    # Editor
    set EDITOR nvim
    set VISUAL nvim

end

# Window Manager
alias sway="sway --unsupported-gpu"

# Better programs
alias vim=nvim
alias cat=bat
alias grep=rg
alias find=fd
alias c=z
alias ls="exa -a"
alias calc=eva
alias pdf=evince

# Handy shortcuts
alias :q=exit
alias :Q=exit
alias gst="git status"
alias vimconf="cd ~/.config/nvim/ & nvim init.lua"
alias swayconf="nvim ~/.config/sway/config"
alias fishconf="nvim ~/.config/fish/config.fish"

alias puss="git push"
alias conf="cd ~/.config/"
alias monkey=toipe

# Chalmers Course Commands
alias parallol="cd ~/Documents/Programming/courses/y2/lp3/TDA384/"
alias dsl="cd ~/Documents/Programming/courses/y2/lp3/DAT326/"
alias dd="cd ~/Documents/Programming/courses/y2/lp3/EDA322/"

# SSH Magic
alias homeserver="ssh viking@192.168.0.115"

# Atuin Settings
set -gx ATUIN_NOBIND "true"
bind \cr _atuin_search
bind -M insert \cr _atuin_search

# Tmux
if test $TERM != "tmux-256color";
  tmux new-session -A -s "$USER" 
end

zoxide   init fish | source
starship init fish | source
atuin    init fish | source
