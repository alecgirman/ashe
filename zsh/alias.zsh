# command rebinds
alias sed='sed -E'

alias afind='ack -il'
alias da='du -sch'
alias ff=firefox
alias history=omz_history
alias howdoi='howdoi -c'
alias keep='noglob keep'
alias la='ls -lA'
alias llog=journalctl
alias l='ls -lah'
alias ls='ls --color=tty -A'
alias md='mkdir -p'
alias m=man
alias pacman='yay'
alias plc='playerctl'
alias tlog='journalctl -f'
alias tl='task list'
alias ytdi='youtube-dl --id'
alias ytds='youtube-dl --default-search "ytsearch"'
alias ytd=youtube-dl

alias a='ack'
alias c='cat'
alias e='nvim' # edit
alias f='fuck'
alias m='man'
alias q='exit'
alias t='touch'

alias gs='git status'

alias pm='pulsemixer'
alias nf='neofetch'
alias widc='weather dc'
alias lc='lolcat -t'

alias ap='ack --nocolor -os'
# ack show only matches, must run ack with -o
alias aom='cut -f3 -d:'
alias :q='echo "this isnt vim!"'

alias addalias='nvim /root/.zsh/alias.zsh'
alias addfunction='nvim /root/.zsh/functions.zsh'

alias cputemp='sensors | sed -n "/^Core/p"'

alias follow='tail -fs'
alias fsb='du -sb'
alias fsh='du -sh'
alias ffile='findfile'
alias ffir='findfileinroot'

alias fpstat="stat --format=%a"
alias clearcache='echo 3 > /proc/sys/vm/drop_caches'

alias zshconfig='nvim ~/.zshrc'
alias ohmyzsh='nvim ~/.oh-my-zsh/oh-my-zsh.sh'
alias i3config='nvim ~/.config/i3/config'
alias i3blockconfig='nvim ~/.config/i3blocks/config'
alias rlz='source ~/.zshrc'
