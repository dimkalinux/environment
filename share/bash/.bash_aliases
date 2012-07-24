# allows passing of aliases to sudo
alias sudo="sudo "

# navigation
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

# listing directory contents
alias ll="ls -hlF"
alias la="ls -halF"
alias lt="tree -F --dirsfirst -I \"*.pyc\""
alias lt2="lt -L 2"
alias lt3="lt -L 3"
alias lt4="lt -L 4"
alias lt5="lt -L 5"

# command history
alias hist="history | filter-history"

# archiving
alias untar="tar -xvf"

# google chrome
alias chrome="open /Applications/Google\ Chrome.app"

# ip address
alias localip="ipconfig getifaddr en1"
alias ips="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'"

# flush dns acache
alias flushdns="dscacheutil -flushcache"

# view http traffic
alias sniff="sudo ngrep -d 'en1' -t '^(GET|POST) ' 'tcp and port 80'"
alias httpdump="sudo tcpdump -i en1 -n -s 0 -w - | grep -a -o -E \"Host\: .*|GET \/.*\""

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
alias ack='acklocal'

# lorem ipsum
alias ipsum='lorem-ipsum-generator'
