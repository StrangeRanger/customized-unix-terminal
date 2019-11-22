Here are a list of aliases and configurations you can use to give your terminal syntax highlighting.

## Using the bash shell
Place
```
export PS1="\[\033[32m\]\u@\h:\[\033[34m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=exgxfxDxcxegDhabagacaD
```
at the top of `~/.bash_profile`.

Then place
```
# Custom aliases
alias ll="ls -alF"
alias la="ls -A"
alias edisk="cd /Volumes && ll"
alias find2="sudo find / -iname $1"
alias grep2="sudo grep -r -i -l $1 $2"
alias ic="cd ~/Library/Mobile\ Documents/com~apple~CloudDocs"
#alias serverssh="ssh -i ~/.ssh/key_location username@hostname"
#alias serversftp="sftp -i ~/.ssh/key_location username@hostname"
```
at or close to the bottom of `~/.bash_profile`.

## Using the zsh shell 
Place
```
# Custom aliases
alias ll="ls -alF"
alias la="ls -A"
alias edisk="cd /Volumes && ll"
alias find2="sudo find / -iname $1"
alias grep2="sudo grep -r -i -l $1 $2"
alias ic="cd ~/Library/Mobile\ Documents/com~apple~CloudDocs"
#alias serverssh="ssh -i ~/.ssh/key_location username@hostname"
#alias serversftp="sftp -i ~/.ssh/key_location username@hostname"
```
at or close to the bottom of `~/.zshrc`.

