# Terminal Syntax Highlighting and Shell Aliases

Below are instructions on how to add my custom aliases, as well as enable terminal syntax highlighting. Follow the instructions for whatever shell you are currently using.

Note: Some of the aliases will require you to install the command that they use, via homebrew.

## Using Bash Shell

Place the text below at the top of `~/.bash_profile`.

```bash
export PS1="\[\033[32m\]\u@\h:\[\033[34m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS="exgxfxDxcxegDhabagacaD"
```

Then place the text below at or close to the bottom of `~/.bash_profile`.

```bash
# Custom aliases
alias edisk="cd /Volumes && ls -l"
alias find2="sudo find / -iname $1"
alias grep2="sudo grep -r -i -l $1 $2"
alias ic="cd ~/Library/Mobile\ Documents/com~apple~CloudDocs"
alias batterylife="pmset -g batt"
alias batterycycles="system_profiler SPPowerDataType | grep 'Cycle Count' | awk '{print $3}'"
# Probe open ports to determine service/version info; combines UDP scan and TCP
# SYN scan; Enable OS detection, version detection, script scanning, and
# traceroute; verbose * 3
alias nmap-os-udp-tcp-vvv="sudo nmap -sV -sSU -A -vvv"
alias trm="trash"
alias wdmsg="ncdu" # Alias stands for "where did my storage go"
```

## Using ZSH Shell

In `~/.oh-my-zsh/lib/theme-and-appearance.zsh`, comment out the line that begins with `export LSCOLORS=`, then place `export LSCOLORS="exgxfxDxcxegDhabagacaD"` on the line below it.

Place the text below at or close to the bottom of `~/.zshrc`.

```bash
# Custom aliases
alias edisk="cd /Volumes && ls -l"
alias find2="sudo find / -iname $1"
alias grep2="sudo grep -r -i -l $1 $2"
alias ic="cd ~/Library/Mobile\ Documents/com~apple~CloudDocs"
alias batterylife="pmset -g batt"
alias batterycycles="system_profiler SPPowerDataType | grep 'Cycle Count' | awk '{print $3}'"
# Probe open ports to determine service/version info; combines UDP scan and TCP
# SYN scan; Enable OS detection, version detection, script scanning, and
# traceroute; verbose * 3
alias nmap-os-udp-tcp-vvv="sudo nmap -sV -sSU -A -vvv"
alias trm="trash"
alias wdmsg="ncdu" # Alias stands for "where did my storage go"
```
