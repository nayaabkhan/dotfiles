#-------------------------------------------------------------------------------
# Navigation
#-------------------------------------------------------------------------------
function dl
  cd ~/Downloads
end

#-------------------------------------------------------------------------------
# Overrides
#-------------------------------------------------------------------------------
function grep
  command grep --color=auto $argv
end

function git --wraps hub --description 'Alias for hub, which wraps git to provide extra functionality with GitHub.'
  hub $argv
end

function ls
  colorls $argv
end

#-------------------------------------------------------------------------------
# Utilities
#-------------------------------------------------------------------------------
function ip
  curl -s http://checkip.dyndns.com/ | sed 's/[^0-9\.]//g'
end

function localip
  ipconfig getifaddr en0
end

#-------------------------------------------------------------------------------
# Shortcuts
#-------------------------------------------------------------------------------
function mkgit 
  mkdir $argv
  cd $argv
  git init
end

function c
  code .
end

function s
  subl .
end

function cdp
  if test (count $argv) -ge 1
    cd ~/Projects/$argv
  else
    cd ~/Projects
  end
end

function clone
  git clone $argv
  cd (basename $argv .git)
end
