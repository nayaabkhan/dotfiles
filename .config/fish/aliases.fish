# Navigation
function ..    ; cd .. ; end
function ...   ; cd ../.. ; end
function ....  ; cd ../../.. ; end
function ..... ; cd ../../../.. ; end

# Utilities
function g        ; git $argv ; end
function grep     ; command grep --color=auto $argv ; end
function dl       ; cd ~/Downloads ; end
function ip       ; curl -s http://checkip.dyndns.com/ | sed 's/[^0-9\.]//g' ; end
function localip  ; ipconfig getifaddr en0 ; end
function lookbusy ; cat /dev/urandom | hexdump -C | grep --color "ca fe" ; end
function mkgit    ; mkdir $argv ; cd $argv ; git init ; end
function c        ; code . ; end
function s        ; subl . ; end
function cdp
  if test (count $argv) -ge 1
    cd ~/Projects/$argv
  else
    cd ~/Projects
  end
end
function clone    ; git clone $argv; cd (basename $argv .git); end

function git --wraps hub --description 'Alias for hub, which wraps git to provide extra functionality with GitHub.'
  hub $argv
end
