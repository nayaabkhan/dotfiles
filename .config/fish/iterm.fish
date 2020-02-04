function iterm2_print_user_vars
  set -l kube_ctx (kubectx -c)
  iterm2_set_user_var kubectx "$kube_ctx"
end
