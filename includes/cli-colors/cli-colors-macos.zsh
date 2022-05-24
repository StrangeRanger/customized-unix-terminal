# Modifies colors of files and directories when using `ls`.
export LSCOLORS="exgxfxDxcxegDaabagacaD"
## Version of LSCOLORS compatible with zsh and GNU based commands.
## You can find more information about LS_COLORS and why it's needed in addition to LSCOLORS,
## here: https://github.com/ohmyzsh/ohmyzsh/issues/6060#issuecomment-327934559
export LS_COLORS="di=34:ln=36:so=35:pi=1;33:ex=32:bd=34;46:cd=1;33;40:su=30;41:sg=30;46:tw=30;42:ow=30;1;43"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}