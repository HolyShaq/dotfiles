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
set -gx EDITOR nvim

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

# Keybinds
# Bind Ctrl-e to open the current command in your $EDITOR
function edit_in_wezterm_float
    set -l current_cmd (commandline)
    set -l tmpfile (mktemp /tmp/wezterm_edit.XXXXXX.sh)
    echo "$current_cmd" > "$tmpfile"

    # The magic: 2> /dev/null silences the portal warnings
    wezterm start --class "floating_editor" nvim "$tmpfile" 2> /dev/null
    
    set -l new_cmd (cat "$tmpfile")
    commandline -r "$new_cmd"
    rm "$tmpfile"
end

# Bind it to Ctrl-e
bind \ce edit_in_wezterm_float

# pnpm
set -gx PNPM_HOME "/home/holyshaq/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end

