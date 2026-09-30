# Loaded by the Ansible-managed ~/.config/fish/config.fish.
# The repo contains authored configuration only, never plugin/runtime state.
set -l shared_root (path dirname (status filename))
set -g fish_function_path $shared_root/functions $fish_function_path
for snippet in $shared_root/conf.d/*.fish
    source $snippet
end
