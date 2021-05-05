# Check if the dotfiles directory is dirty!
if test (git -C $HOME/.dotfiles status 2> /dev/null | tail -n1) != "nothing to commit, working tree clean"
    set fish_greeting "Uncommitted changes in .dotfiles"
else
    set fish_greeting ""
end

# Add /opt/bin to PATH
contains /opt/bin $fish_user_paths; or set -Ua fish_user_paths /opt/bin
# Add .dotfiles/bin to PATH
contains $HOME/.dotfiles/bin $fish_user_paths; or set -Ua fish_user_paths $HOME/.dotfiles/bin

# Use Jdk8 as the default java home
set -Ux JAVA_HOME /opt/jdk/jdk8u282-b08/

# Aliases the java/javac-commands into something which uses the currently selected
# JAVA_HOME environment variable. Autoloading functions do not seem to work for these,
# for one reason or another.
function java
    $JAVA_HOME/bin/java $argv
end
function javac
    $JAVA_HOME/bin/javac $argv
end
