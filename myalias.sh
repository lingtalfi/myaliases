export PS1="\\$ "



alias ll='ls -lArth'
alias aa='open ~/.bash_profile'
alias aas='source ~/.bash_profile'
alias myalias='open ~/.bash_profile'
alias myaliass='source ~/.bash_profile'
alias paa='open "/pathto/bash/projects/myaliases/private/my-private-aliases.sh"'
alias tm='source "/pathto/bash/projects/task-manager/tm.sh"'



alias hostt='open /etc/hosts'


#------------------------------
# VIM
#------------------------------
alias vimrc='vim ~/.vimrc'




#------------------------------
# WEB DEVELOPMENT
#------------------------------
alias wstart='sudo nginx; sudo php-fpm'

# php-fpm
alias pstart='sudo php-fpm'
alias pstop='sudo killall php-fpm'
alias pconf='open "/usr/local/etc/php/7.0"'

# nginx

nginxPath="/usr/local/Cellar/nginx/1.10.2_1"
nginxConfPath="/usr/local/etc/nginx"


alias nstart='sudo nginx'
alias nstop='sudo nginx -s stop'
alias nr='sudo nginx -s reload'
alias nsite='open "/pathto/server/nginx-notes/private/my-nginx-confs"'
alias nlog='tail -f "$nginxPath/logs/error.log"'
alias nlogg='tail -f "$nginxPath/logs/access.log"'
alias nconf='open "$nginxConfPath/nginx.conf"'




#------------------------------
# MAC
#------------------------------
# https://github.com/lingtalfi/Time-machine-and-shutdown
alias tmdown='cd "/pathto/misc_projects/timemachine-and-shutdown"; ./tmshutdown.sh'
alias kom='ssh kom'
alias melp='"/pathto/bash/projects/melp/melp.sh"'


#------------------------------
# DIAGNOSE
#------------------------------
# shows the list of users currently executing a process
alias uu='ps aux | awk -F " " '\''{print $1}'\'' | sort -u'
alias pss="/pathto/bash/projects/pss/pss.sh"


#------------------------------
# BOOKMARKS
#------------------------------
# https://github.com/lingtalfi/cdd
source "/pathto/bash/projects/cdd/cdd.sh"



#------------------------------
# PRIVATE ALIASES
#------------------------------
source "/pathto/bash/projects/myaliases/private/my-private-aliases.sh"


#------------------------------
# EXPORTS
#------------------------------
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/pcre/bin:$PATH
export PATH="/usr/local/libiconv/bin:$PATH"
export PATH="/usr/local/nginx/sbin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="$PATH:~/.vimpkg/bin"
# http://dev.mysql.com/doc/refman/5.7/en/osx-installation-notes.html
export PATH="$PATH:/usr/local/mysql/bin"