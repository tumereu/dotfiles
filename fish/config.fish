# Check if the dotfiles directory is dirty!
if test (git status $HOME/.dotfiles 2> /dev/null | tail -n1) != "nothing to commit (working directory clean)"
    echo "Uncommitted changes in .dotfiles!"
end