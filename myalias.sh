export PS1="\\$ "



alias ll='ls -lArth'
alias aa='open "/pathto/bash/projects/myaliases/myalias.sh"'
alias aas='source "/pathto/bash/projects/myaliases/myalias.sh"'
alias aap='open "/pathto/bash/projects/myaliases/private/my-private-aliases.sh"'
alias tm='source "/pathto/bash/projects/task-manager/tm.sh"'


alias hostt='open /etc/hosts'


#------------------------------
# VIM
#------------------------------
alias vimrc='vim ~/.vimrc'

#------------------------------
# MAMP
#------------------------------
alias mmysql='/Applications/MAMP/Library/bin/mysql -uroot -proot'
alias msite='open "/Applications/MAMP/conf/apache/extra"'

#------------------------------
# GIT
#------------------------------
alias ginit='/pathto/bash/projects/ginit/ginit.sh'
alias gitpull='git fetch --all; git reset --hard origin/master';
alias guu='git snap update; git pp';
alias gsu='php -f /myphp/git-smart-update/smart-update.php'


#------------------------------
# GENERAL
#------------------------------
# quick memo
alias cc='open ~/current.txt'


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
alias nsite='open "/usr/local/etc/nginx/servers"'
alias nlog='tail -f "$nginxPath/logs/error.log"'
alias nlogg='tail -f "$nginxPath/logs/access.log"'
alias nconf='open "$nginxConfPath/nginx.conf"'

# nullos
nullosPath="/pathto/php/projects/nullos-admin/app-nullos"
alias nulp='tail -f -n 100 "$nullosPath/log/php.err.log"'
alias null='tail -f -n 100 "$nullosPath/log/nullos.log"'


# webwizard
alias wwiz='bashman -h "/pathto/bash/projects/webmaster-wizard/home" -c myconf -v'



#------------------------------
# KAMILLE
#------------------------------
alias klog='tail -f -n 100 /myphp/kaminos/app/logs/kamille.log.txt'
alias kwpack='php -f /mytasks/kamille/pack-widgets.php'
alias kpack='php -f /mytasks/kamille/pack-modules.php'
alias okwpack='open /mytasks/kamille/pack-widgets.php'
alias okpack='open /mytasks/kamille/pack-modules.php'
alias kexx='php -f "/mytasks/kamille/prepareForExport.php" -- module; open /myphp/kamille-modules'
alias kwexx='php -f "/mytasks/kamille/prepareForExport.php" -- widget; open /myphp/kamille-widgets'
alias kam='cd /myphp/kaminos/app'
alias prime='cd /myphp/prime/app'
alias lee='cd /myphp/leaderfit/leaderfit'
alias box='cd /myphp/leaderbox'

alias startt='uni update; cd /myphp/kamille-modules; kamille importall -f -xx; cd /myphp/kamille-widgets; kamille wimportall -f -xx; cd /myphp/universe; uni importall -f;'
alias updatee='box; gitpull; cd /pathto/bash/projects/myaliases; gitpull; uni update; cd /myphp/kamille-modules; kamille updateall -xx; cd /myphp/kamille-widgets; kamille wupdateall -xx; cd /myphp/universe; uni updateall;'
alias lback='/Applications/MAMP/Library/bin/mysqldump -u root -proot kamille > /myphp/leaderfit/leaderfit/store/Ekom/database/kamille.sql'
alias lrestore='/Applications/MAMP/Library/bin/mysql -u root -proot kamille < /myphp/leaderfit/leaderfit/store/Ekom/database/kamille.sql'
alias plog='tail -f -n 100 /myphp/leaderfit/leaderfit/logs/php.log.txt'
alias llog='tail -f -n 100 /myphp/leaderfit/leaderfit/logs/kamille.log.txt'
alias slog='tail -f -n 100 /myphp/leaderfit/leaderfit/logs/kamille.sql.log.txt'
alias dlog='tail -f -n 100 /myphp/leaderfit/leaderfit/logs/debug.log.txt'
alias clog='tail -f -n 100 /myphp/leaderfit/leaderfit/logs/cache.log.txt'
alias pagelog='tail -f -n 100 /myphp/leaderfit/leaderfit/logs/page-perf.log.txt'

alias xiaoa='php -f /myphp/leaderfit/leaderfit/scripts/xiao-generator-thisapp.php'
alias xiaoo='php -f /myphp/leaderfit/leaderfit/scripts/xiao-generator.php'
alias xiaoc='php -f /myphp/leaderfit/leaderfit/scripts/xiao-generator-ekom-card-combination.php'
alias xiaop='php -f /myphp/leaderfit/leaderfit/scripts/xiao-generator-peipei.php'
alias xiaot='php -f /myphp/leaderfit/leaderfit/scripts/xiao-generator-training.php'
alias xiaoph='php -f /myphp/leaderfit/leaderfit/scripts/xiao-generator-ekom-user-product-history.php'
alias prcc='php -f /myphp/leaderfit/leaderfit/scripts/generator.php'
alias cachee='rm -r /myphp/leaderfit/leaderfit/cache'
alias ksql='/Applications/MAMP/Library/bin/mysql --user=root --password=root --database=kamille --execute="DROP DATABASE if exists kamille; CREATE DATABASE kamille character set utf8 collate utf8_general_ci;"; /Applications/MAMP/Library/bin/mysql -u root -proot kamille < /myphp/leaderfit/leaderfit/class-modules/Ekom/assets/db/ekom-kamille.sql; /Applications/MAMP/Library/bin/mysql -u root -proot kamille < /myphp/leaderfit/leaderfit/class-modules/PeiPei/assets/db/peipei.sql; /Applications/MAMP/Library/bin/mysql -u root -proot kamille < /myphp/leaderfit/leaderfit/class-modules/TrainingProducts/assets/db/training_products.sql;'
alias sorm='php -f /myphp/leaderfit/leaderfit/scripts/leaderfit/save-orm-generator.php'


#------------------------------
# Lee
#------------------------------
alias leepush='cd /myphp/leaderfit/leaderfit; git snap update; git ppv'
alias boxpush='cd /myphp/leaderbox; git snap update; git pp'
alias biggreen='php -f /myphp/leaderfit/leaderfit/scripts/leaderfit/big-green.php'




#------------------------------
# MAC
#------------------------------
# https://github.com/lingtalfi/Time-machine-and-shutdown
alias tmdown='cd "/pathto/misc_projects/timemachine-and-shutdown"; ./tmshutdown.sh'
alias kom='ssh kom'
alias vps='ssh vps'
alias melp='"/pathto/bash/projects/melp/melp.sh"'

# resize firefox to a specific window size, useful for taking homogeneous screenshots
alias ff='osascript "/pathto/mac/resize-firefox.scpt"'
alias ss='osascript "/pathto/mac/resize-firefox.scpt"; sleep 1; a="/pathto/php/projects/nullos-admin/private/doc-screenshots/official/modules/crud-module/configure-list"; screencapture -R1000,50,1300,1000 "$a/capture.png"; open "$a"'

alias subl='"/Applications/Sublime Text.app/Contents/MacOS/Sublime Text" '


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
export PATH=/usr/local/pcre/bin:$PATH
export PATH="/usr/local/libiconv/bin:$PATH"
export PATH="/usr/local/nginx/sbin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="$PATH:~/.vimpkg/bin"
# http://dev.mysql.com/doc/refman/5.7/en/osx-installation-notes.html
export PATH="$PATH:/usr/local/mysql/bin"
export PATH=/usr/local/bin:$PATH



export APPLICATION_ENVIRONMENT=dev
