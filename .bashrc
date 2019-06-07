#
# ~/.bashrc
#

# Welcome Message:

echo -ne "Today is "; date
echo "";

################ ALIASES ##################

alias ls='ls --color=auto'
alias grep='grep --colour=auto'
alias egrep='egrep --colour=auto'
alias fgrep='fgrep --colour=auto'

# automatically show directory contents
#       consider changing to different alias
#       if working with a large directory
cd() {
 builtin cd "$@" && ls;
}

alias dir='pwd'	# Show current directory
alias where='pwd'
alias cp="cp -i"                                                   # confirm before overwriting something
alias df='df -h'                                                   # human-readable sizes
alias free='free -m'                                               # show sizes in MB
alias np='nano -w PKGBUILD'
alias more=less
alias c='clear'                                                    # clear the screen
alias b='cd -'                                                     # move to the previous directory
alias u='cd ..'                                                    # move up one directory
alias k='kill $!'                                                  # kill last process
alias install='sudo pacman -Syu'                                   # install a package
alias makeC='gcc -o'                                               #easier way to compile C programs
alias reinstall='sudo pacman -S'                                   #easier way to reinstall
alias refreshPulseaudio='printf "1. Check if any pulseaudio instance is running: pulseaudio --check. It normally prints no output, just exit code. 0 means running.\n2. If any instance is running : pulseaudio -k.\n3. Finally, start pulseaudio again as a daemon : pulseaudio -D\n"' #Display steps to reload PulseAudio

# Config files #

alias config.bashrc='nvim ~/.dotfiles/.bashrc'			#edit .bashrc
alias config.xinitrc='nvim ~/.dotfiles/.xinitrc'		#edit .xinitrc
alias config.vimrc='nvim ~/.dotfiles/init.vim'			#edit vimrc
alias config.i3='nvim ~/.dotfiles/i3/config'			#edit i3-gaps config file
alias config.i3bar='nvim ~/.dotfiles/i3/i3status/config'	#edit i3-status

#########################################

# Enable history appending instead of overwriting.  #139609
shopt -s histappend

# ex - archive extractor
# usage: ex <file>

ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1     ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

# better tab completion
bind "set completion-ignore-case on"
bind "set completion-map-case on"
bind "set show-all-if-ambiguous on"

# Add color in manpages for less
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'

# faster navigation
shopt -s autocd
shopt -s dirspell
shopt -s cdspell

# enable true colors in neovim
export NVIM_TUI_ENABLE_TRUE_COLOR=1

# javafx environment variables
export PATH_TO_FX=/lib/jvm/javafx-sdk-11.0.2/lib

# prompt
export PS1="\[\033[38;5;4m\]\u\[$(tput sgr0)\]\[\033[38;5;15m\] \w \[$(tput sgr0)\]\[\033[38;5;208m\]\\$\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/juan/.sdkman"
[[ -s "/home/juan/.sdkman/bin/sdkman-init.sh" ]] && source "/home/juan/.sdkman/bin/sdkman-init.sh"
