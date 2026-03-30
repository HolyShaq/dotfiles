# Generated
source /usr/share/cachyos-fish-config/cachyos-config.fish

# overwrite greeting
# potentially disabling fastfetch
#function fish_greeting
#    # smth smth
#end

fish_add_path /home/holyshaq/.spicetify
# ---

# Environment Variables
export XDG_CONFIG_HOME="$HOME/.config"
export LEDGER_FILE=/mnt/things/Finances/2026.journal

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
alias hl='hledger'

# Initialize zoxide
zoxide init fish | source

# Initialize starship
starship init fish | source

# pnpm
set -gx PNPM_HOME "/home/holyshaq/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
