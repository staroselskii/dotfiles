# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
    . "$HOME/.bashrc"
    fi
fi

export EDITOR=vim
export PAGER=less
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export GPG_TTY=`tty`

for file in "$HOME"/.profile.d/*; do
      source "$file"
done
