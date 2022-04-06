alias rm "rm -i"
alias cp "cp -i"
alias mv "mv -i"
alias mkdir "mkdir -p"
alias du "du -hs"
alias grep 'grep --color=auto'
alias vim nvim

if which exa > /dev/null 2>&1
  alias ls 'exa --git --icons'
  alias lt 'exa --tree --icons --level=2 --git-ignore'
  alias lla 'll -a'
end

switch (uname)
  case Linux
    alias c 'code --enable-features=UseOzonePlatform --ozone-platform=wayland .'
  case Darwin
    alias c 'code .'
end

abbr o open
abbr b bat
abbr g git
abbr n nvim

abbr ga "git add"
abbr gap "git add -p"
abbr gc "git commit"
abbr gcan "git commit --amend --no-edit"
abbr gcm "git commit -m"
abbr gd "git diff"
abbr gds "git diff --staged"
abbr gp "git push"
abbr gpf "git push --force-with-lease"
abbr gs "git status"
abbr gl "git log"
abbr glo "git log --oneline"
abbr grm "git rebase master"
abbr grim "git rebase -i master"
abbr grc "git rebase --continue"
abbr grh "git reset HEAD"

