set -U fish_greeting ""
set -x GPG_TTY (tty)

fish_vi_key_bindings; function fish_mode_prompt; end

source ~/.config/fish/paths.fish
source ~/.config/fish/aliases.fish
