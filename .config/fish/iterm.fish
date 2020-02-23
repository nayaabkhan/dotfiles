function _git_branch_name
    set -l branch (git symbolic-ref --quiet HEAD 2>/dev/null)
    if set -q branch[1]
        echo (string replace -r '^refs/heads/' '' $branch)
    else
        echo (git rev-parse --short HEAD 2>/dev/null)
    end
end

function iterm2_print_user_vars
    set -l kube_ctx (kubectx -c)
    set -l curr_dir (pwd | sed "s|^$HOME|~|")
    set -l node_v (node -v)
    set -l branch_n (_git_branch_name)

    iterm2_set_user_var kubectx "$kube_ctx"
    iterm2_set_user_var currdir "$curr_dir"
    iterm2_set_user_var nodev "$node_v"
    iterm2_set_user_var branchn "$branch_n"
end
