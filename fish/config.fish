# Check if the dotfiles directory is dirty!
if test (git -C $HOME/.dotfiles status 2> /dev/null | tail -n1) != "nothing to commit, working tree cleanr"
    echo "Uncommitted changes in .dotfiles!"
end

# Add /opt/bin to PATH
 contains /opt/bin $fish_user_paths; or set -Ua fish_user_paths /opt/bin