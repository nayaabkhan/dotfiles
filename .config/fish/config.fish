set -U fish_greeting ""

set -x GPG_TTY (tty)
set -gx GO_PATH ~/Projects/go
set -g fish_user_paths "/usr/local/opt/node@8/bin" $fish_user_paths
set -g fish_user_paths "/usr/local/opt/ruby/bin" $fish_user_paths

test -d ~/Projects/StarOfService/carbon             ; and set PATH ~/Projects/StarOfService/carbon $PATH
test -d ~/.cargo/bin                                ; and set PATH ~/.cargo/bin $PATH

source ~/.config/fish/aliases.fish
