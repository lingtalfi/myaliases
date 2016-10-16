export PS1="\\$ "



alias ll='ls -lArth'
alias myalias='open ~/.bash_profile'
alias myaliass='source ~/.bash_profile'




alias hostt='open /etc/hosts'







#------------------------------
# WEB DEVELOPMENT
#------------------------------
# php-fpm
alias pstart='sudo php-fpm'
alias pstop='sudo killall php-fpm'
alias pconf='open "/usr/local/etc/php/7.0"'

# nginx
alias nnstart='sudo nginx'
alias nnstop='sudo nginx -s stop'
alias nnr='sudo nginx -s reload'
alias nnerr='open "/usr/local/nginx/logs/error.log"'
alias nnacc='open "/usr/local/nginx/logs/access.log"'
alias nconf='open "/usr/local/nginx-1.11.3/conf"'


#------------------------------
# MAC
#------------------------------
# https://github.com/lingtalfi/Time-machine-and-shutdown
alias tmdown='cd "/pathto/misc_projects/timemachine-and-shutdown"; ./tmshutdown.sh'




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
export PATH=/usr/local/pcre/bin:$PATH
export PATH="/usr/local/libiconv/bin:$PATH"
export PATH="/usr/local/nginx/sbin:$PATH"
export PATH="/usr/local/sbin:$PATH"
