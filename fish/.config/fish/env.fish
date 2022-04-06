set -gx fish_greeting ''
set -gx TERM xterm-256color
set -gx EDITOR nvim
set -x GPG_TTY (tty)

set pure_threshold_command_duration 2
set --universal nvm_default_version lts

set -gx HOMEBREW_PREFIX "/opt/homebrew";
set -gx HOMEBREW_CELLAR "/opt/homebrew/Cellar";
set -gx HOMEBREW_REPOSITORY "/opt/homebrew";
set -gx HOMEBREW_SHELLENV_PREFIX "/opt/homebrew";
set -q PATH; or set PATH ''; set -gx PATH "/opt/homebrew/bin" "/opt/homebrew/sbin" $PATH;
set -q MANPATH; or set MANPATH ''; set -gx MANPATH "/opt/homebrew/share/man" $MANPATH;
set -q INFOPATH; or set INFOPATH ''; set -gx INFOPATH "/opt/homebrew/share/info" $INFOPATH;
