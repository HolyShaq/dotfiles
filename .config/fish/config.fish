# Generated
source /usr/share/cachyos-fish-config/cachyos-config.fish

# overwrite greeting
# potentially disabling fastfetch
#function fish_greeting
#    # smth smth
#end

fish_add_path /home/holyshaq/.spicetify

# ---

# Aliases
## Dotfiles
alias nvimconfig='cd $HOME/.config && nvim'

## Replacements
alias ls='exa'
alias cat='bat'
alias cd='z'

## Shorthands
alias lg='lazygit'
alias cls='clear'

# Initialize zoxide
zoxide init fish | source
