#!/bin/sh

# Use neovim for vim if present.
[ -x "$(command -v nvim)" ] && alias vim="nvim" vimdiff="nvim -d"

# sudo not required for some system commands
for command in mount umount sv pacman updatedb su ; do
	alias $command="sudo $command"
done; unset command

# Verbosity and settings that you pretty much just always are going to want.
alias \
	cp="cp -iv" \
	mv="mv -iv" \
	rm="rm -vI" \
	bc="bc -ql" \
	mkd="mkdir -pv" \

# Colorize commands when possible.
alias \
	ls="ls -lhN --color=auto --group-directories-first" \
	grep="grep --color=auto" \
	diff="diff --color=auto" \

# These common commands are just too long! Abbreviate them.
alias \
    p="python3" \
    s="sudo" \
    rsync="rsync -e \"ssh\"" \
    py="python3" \
	ka="killall" \
	g="git" \
	sdn="sudo shutdown -h now" \
	e="nvim" \
	v="nvim" \
	z="zathura --fork" \
    clip='xclip -selection c'
