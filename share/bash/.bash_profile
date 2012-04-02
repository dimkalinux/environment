#! /usr/bin/env bash
#
# Load bash config files. These files have no functional difference other than
# to group similar configuration settings together for easy re-use.
#
# Exceptions:
#   ~/.bash_local can be used for settings you don’t want to commit
#   ~/.bash_auto is generated by the `env_update` tool

for file in bash_prompt bash_exports bash_aliases bash_auto bash_local; do
    file="$HOME/.$file"
    [ -e "$file" ] && source "$file"
done

# Load plugins
[ -e $HOME/.gitcomplete ] && source $HOME/.gitcomplete
[ -e $HOME/.tagcomplete ] && source $HOME/.tagcomplete
[ -e $HOME/.sshcomplete ] && source $HOME/.sshcomplete

# Load OS X specifics
if [ "$(uname)" == "Darwin" ]; then
    source $HOME/.bash_darwin
fi
