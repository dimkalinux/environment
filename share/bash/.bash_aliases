# allows passing of aliases to sudo
alias sudo="sudo "

# navigation
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# listing directory contents
alias ll="ls -hlF"
alias la="ls -halF"
alias lt="tree -C -F --dirsfirst --charset=ascii -I \"*.pyc\""
alias lt2="lt -L 2"
alias lt3="lt -L 3"
alias lt4="lt -L 4"
alias lt5="lt -L 5"

# grep/ack
alias cgrep="grep --color"
alias wack="ack --known-types"

# command history
alias hist="history | filter-history"

# ip address
alias localip="ipconfig getifaddr en1"
alias ips="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'"

# flush dns acache
alias flushdns="dscacheutil -flushcache"

# trim new lines and copy to clipboard
alias c="tr -d '\n' | pbcopy"

# send http request
for method in GET HEAD POST PUT DELETE TRACE OPTIONS; do 
    alias "$method"="lwp-request -m '$method'";
    alias "${method}_STATUS"="lwp-request -m '$method' -ds";
    alias "${method}_HEADER"="lwp-request -m '$method' -de";
    alias "${method}_FULL"="lwp-request -m '$method' -es";
done

# displays system information
alias utime="date '+%s'"

# command wrappers
alias less='less -R'

# lorem ipsum
alias ipsum='lorem-ipsum-generator'

# php stuff
alias php-opcode='php -dvld.active=1'
alias php-debug='php -dxdebug.idekey=artem -dxdebug.remote_autostart=1'

# project tools
alias watch-project="watch -n0.5 -c tree --dirsfirst -C --charset=ascii -I '*.pyc\|vendor\|psds'"
