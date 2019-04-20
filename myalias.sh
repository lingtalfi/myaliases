export PS1="\\$ "



alias ll='ls -lAh'
alias hostt='open /etc/hosts'






#------------------------------
# PYTHON3
#------------------------------
function changePython {
	version=$1
	myprint "updating /usr/local/bin/python3 for version $version"; 
	rm /usr/local/bin/python3;
	ln -s  /Library/Frameworks/Python.framework/Versions/$version/bin/python3 /usr/local/bin/python3

	myprint "updating /usr/local/bin/pip3 for version $version"; 
	rm /usr/local/bin/pip3;
	ln -s /Library/Frameworks/Python.framework/Versions/$version/bin/pip3 /usr/local/bin/pip3


	myprint "updating /usr/local/bin/jupyter for version $version"; 
	rm /usr/local/bin/jupyter;
	ln -s /Library/Frameworks/Python.framework/Versions/$version/bin/jupyter /usr/local/bin/jupyter


	myprint "exporting path"; 
	export PATH="/Library/Frameworks/Python.framework/Versions/$version/bin:$PATH"

}


alias p3='python3'
alias ip3='ipython3'
alias changepython='changePython'


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



#------------------------------
# PUSH ALIAS
#------------------------------
function pushAliases {
	cd "/pathto/bash/projects/myaliases";
	guu
}

alias pushalias='pushAliases'




#------------------------------
# ART
#------------------------------
alias robots='open /MyDocs/zik/projets/logic/robots-dance/robots-dance.md'
alias math='open /MyDocs/math/math.md'
alias zik='open /MyDocs/zik/outils-zik/zik-find-samples.md'
alias cppp='open /MyDocs/it/cpp'
alias premiere='open /MyDocs/video/outils/premiere-shortcuts.txt'
alias blender='open /MyDocs/blender/blender-shortcut.md'
alias p1='open /MyDocs/blender/developer/p1/facial-rig.md'
alias blenderp='open /MyDocs/blender/blender-python.md'
alias blender8='/Applications/Blender/2.8/blender.app/Contents/MacOS/blender'
alias blenderr='/Applications/Blender/blender.app/Contents/MacOS/blender'
alias blendert='/Applications/Blender/2.8/blender.app/Contents/MacOS/blender -b -P "/Applications/Blender/blender.app/Contents/Resources/2.79/scripts/addons/ling_tools/test.py"'
alias logic='open /MyDocs/zik/outils-zik/logic-audio-shortcuts.md'
alias sound='open /MyDocs/zik/outils-zik/zik-find-samples.md'
alias clip='open /MyDocs/bd/clip-studio-paint-shortcuts.md'
alias finale='open /MyDocs/zik/outils-zik/finale-shortcuts.md'
alias idee='open "/MyDocs/video/idées"'
alias bourse='open "/MyDocs/richman/trading/bourse-memento.md"'
alias ae='open "/MyDocs/video/outils/after-effects-shortcuts.txt"'

#------------------------------
# GENERAL
#------------------------------
# quick memo
alias cc='open ~/current.txt'
alias aa='open "/pathto/bash/projects/myaliases/myalias.sh"'
alias aas='source "/pathto/bash/projects/myaliases/myalias.sh"'
alias aap='open "/pathto/bash/projects/myaliases/private/my-private-aliases.sh"'
alias aau='cd /pathto/bash/projects/myaliases; guu'
alias tm='source "/pathto/bash/projects/task-manager/tm.sh"'



#------------------------------
# CUSTOM AMP
#------------------------------
alias apstart='sudo brew services start httpd'
alias aprestart='sudo brew services restart httpd'
alias apstop='sudo brew services stop httpd'
alias apconf='open /usr/local/etc/httpd/httpd.conf'
alias aphost='open /usr/local/etc/httpd/extra/httpd-vhosts.conf'

alias pconf='open /usr/local/etc/php/7.2/php.ini'
alias pstart='brew services start php@7.2'
alias prestart='brew services restart php@7.2'
alias pstop='brew services stop php@7.2'

alias mstart='brew services start mysql'
alias mrestart='brew services restart mysql'
alias mstop='brew services stop mysql'



#------------------------------
# JIN CURRENT APP
#------------------------------
alias jinlog='tail -f -n 100 "/komin/jin_site_demo/log/jin.log"'
alias jinerrlog='tail -f -n 100 "/komin/jin_site_demo/log/error.log"'
alias jinsynlog='tail -f -n 100 "/komin/jin_site_demo/log/app_synopsis.log"'




#------------------------------
# DOCSIFY
#------------------------------
alias dock='docsify serve /myphp/universe/planets/Kamille/doc/official'
alias docn='docsify serve /myphp/kamille-modules/NullosAdmin/doc/official'
alias doce='docsify serve /myphp/kamille-modules/Ekom/doc/official'



#------------------------------
# WEB DEVELOPMENT
#------------------------------
alias wk='wkhtmltopdf'
alias wstart='sudo nginx; sudo php-fpm'

# php-fpm
# alias pstart='sudo php-fpm'
# alias pstop='sudo killall php-fpm'
# alias pconf='open "/usr/local/etc/php/7.0"'





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
# Universe
#------------------------------
alias kaos='php -f /myphp/universe/Ling/LingTalfi/script/kaos.php --'
alias kpp='kaos push'
alias kpt='kaos packpushuni'
alias kpu='kaos pushuni'
alias kpl='kaos packlightmap a=/komin/jin_site_demo'
alias ouni='open "/myphp/universe"'


#------------------------------
# Deploy
#------------------------------
#alias deploy='php -f /myphp/universe/Ling/Deploy/script/deploy.php --'
alias dp='deploy'
alias dpconf='open ~/.deploy/deploy.conf.byml'


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
alias kit='cd /myphp/kamille-installer-tool'
alias ekomm='cd /myphp/kamille-modules/Ekom'
alias box='cd /myphp/leaderbox'



alias lback='mkdir -p /myphp/leaderfit/leaderfit/store/Ekom/database; touch /myphp/leaderfit/leaderfit/store/Ekom/database/kamille.sql; /Applications/MAMP/Library/bin/mysqldump -u root -proot kamille > /myphp/leaderfit/leaderfit/store/Ekom/database/kamille.sql'
alias lrestore='/Applications/MAMP/Library/bin/mysql -u root -proot kamille < /myphp/leaderfit/leaderfit/store/Ekom/database/kamille.sql'; 
alias lzip='cd /myphp/leaderfit/leaderfit/store/Ekom/database; zip -r kamille.sql.zip kamille.sql'
alias luzip='cd /myphp/leaderfit/leaderfit/store/Ekom/database; unzip -o kamille.sql.zip'; 
alias lopen='open /myphp/leaderfit/leaderfit/store/Ekom/database/'






#------------------------------
# Lee
#------------------------------

function doPrepush {
	myprint "Starting prepush routine...";
	myprint "saving kamille db"; lback; 
	myprint "zipping db"; cd /myphp/leaderfit/leaderfit/store/Ekom/database; zip -r kamille.sql.zip kamille.sql; 
	myprint "pushing files to the preprod server"; cd /myphp/leaderfit/leaderfit; git snap update; git pppre;
	myprint "Endof prepush routine...";
}


alias leepush='cd /myphp/leaderfit/leaderfit; git snap update; git ppv'
alias prepush=doPrepush
alias boxpush='cd /myphp/leaderbox; git snap update; git pp'
alias biggreen='php -f /myphp/leaderfit/leaderfit/scripts/leaderfit/big-green.php'
alias rebuild='php -f /myphp/leaderfit/leaderfit/scripts/leaderfit/cron/rebuild-cache.php'



function myprint {
	echo -e "\033[0;32m$1\033[0m"
}

function doThePull {
	myprint "pulling phpstorm settings"; cd "/myphp/phpstorm-mysettings"; gitpull;
	myprint "pulling aliases"; cd "/pathto/bash/projects/myaliases"; gitpull;
	myprint "pulling leaderbox"; box; gitpull;
	myprint "updating uni tool"; uni update;
	myprint "updating kit"; cd "/myphp/kamille-installer-tool"; gitpull;
	myprint "pulling all Kamille modules"; cd "/myphp/kamille-modules"; kamille updateall -xx;
	myprint "pulling all Kamille widgets"; cd "/myphp/kamille-widgets"; kamille wupdateall -xx;
	myprint "reimporting all universe"; cd "/myphp/universe"; uni updateall;
 	myprint "pulling lee app"; lee; gitpull;
 	# now we need to get the database from elsewhere (too heavy for github)
 	# myprint "restoring kamille db"; lrestore;
}
alias pulll=doThePull


function doCleanLogs {
	myprint "cleaning logs"
	echo "" > /leeapp/logs/kamille.sql.log.txt
	echo "" > /leeapp/logs/cache.log.txt
	echo "" > /leeapp/logs/kamille.log.txt
	echo "" > /leeapp/logs/php.log.txt
	echo "" > /leeapp/logs/page-perf.log.txt
	echo "" > /leeapp/logs/mail.log.txt
	echo "" > /leeapp/logs/debug.log.txt
}
alias cleanlogs=doCleanLogs






function doThePush {
	myprint "pushing phpstorm settings"; cd "/myphp/phpstorm-mysettings"; guu;
	myprint "pushing aliases"; cd "/pathto/bash/projects/myaliases"; guu; 
	

	myprint "pushing Application module";cd "/myphp/kamille-modules/Application"; guu; 
	myprint "pushing Authenticate module";cd "/myphp/kamille-modules/Authenticate"; guu; 
	myprint "pushing AutoAdmin module";cd "/myphp/kamille-modules/AutoAdmin"; guu; 
	myprint "pushing Connexion module";cd "/myphp/kamille-modules/Connexion"; guu; 
	myprint "pushing Core module";cd "/myphp/kamille-modules/Core"; guu; 
	myprint "pushing DataTable module";cd "/myphp/kamille-modules/DataTable"; guu; 
	myprint "pushing Ekom module"; cd "/myphp/kamille-modules/Ekom"; guu
	myprint "pushing NullosAdmin module";cd "/myphp/kamille-modules/NullosAdmin"; guu; 
	myprint "pushing UploadProfile module";cd "/myphp/kamille-modules/UploadProfile"; guu; 


	myprint "pushing planet Kamille"; cd "/myphp/universe/planets/Kamille"; guu;
	myprint "pushing planet GuiAdminTable"; cd "/myphp/universe/planets/GuiAdminTable"; guu;

	myprint "pushing leaderfit app"; cd "/myphp/leaderfit/leaderfit"; guu;
	myprint "now pushing to the preprod"; prepush; 

}
 

# echo -e "\033[0;31mokok\033[0m"
alias pushh=doThePush






alias plog='tail -f -n 100 /myphp/leaderfit/leaderfit/logs/php.log.txt'
alias llog='tail -f -n 100 /myphp/leaderfit/leaderfit/logs/kamille.log.txt'
alias slog='tail -f -n 100 /myphp/leaderfit/leaderfit/logs/kamille.sql.log.txt'
alias sslog='tail -f -n 100 /myphp/leaderfit/leaderfit/logs/srd.log.txt'
alias sflog='tail -f -n 100 /myphp/leaderfit/leaderfit/logs/sf.log.txt'
alias dlog='tail -f -n 100 /myphp/leaderfit/leaderfit/logs/debug.log.txt'
alias clog='tail -f -n 100 /myphp/leaderfit/leaderfit/logs/cache.log.txt'
alias pagelog='tail -f -n 100 /myphp/leaderfit/leaderfit/logs/page-perf.log.txt'
alias mlog='tail -f -n 100 /myphp/leaderfit/leaderfit/logs/mail.log.txt'
alias flog='tail -f -n 100 /myphp/leaderfit/leaderfit/logs/formaway.log.txt'


# using db prefixes after xiao prefix
alias xiaopei='php -f "/myphp/leaderfit/leaderfit/scripts/xiao-kamille-module-generator.php" --  --module=PeiPei --prefix=pei_'
alias xiaoappcron='php -f "/myphp/leaderfit/leaderfit/scripts/xiao-kamille-module-generator.php" --  --module=ApplicationCronBot --prefix=appcron_'
alias xiaoeut='php -f "/myphp/leaderfit/leaderfit/scripts/xiao-kamille-module-generator.php" --  --module=EkomUserTracker --prefix=eut_'
alias xiaoekfs='php -f "/myphp/leaderfit/leaderfit/scripts/xiao-kamille-module-generator.php" --  --module=EkomFastSearch --prefix=ekfs_'
alias xiaofm='php -f "/myphp/leaderfit/leaderfit/scripts/xiao-kamille-module-generator.php" --  --module=FishMailer --prefix=fm_'
alias xiaoek='php -f "/myphp/leaderfit/leaderfit/scripts/xiao-kamille-module-generator.php" --  --module=Ekom --prefix=ek_'
alias xiaoect='php -f "/myphp/leaderfit/leaderfit/scripts/xiao-kamille-module-generator.php" --  --module=EkomCartTracker --prefix=ect_'
alias xiaoapp='php -f "/myphp/leaderfit/leaderfit/scripts/xiao-kamille-module-generator.php" --  --module=ThisApp --prefix=app_'
alias xiaotm='php -f "/myphp/leaderfit/leaderfit/scripts/xiao-kamille-module-generator.php" --  --module=TeamMail --prefix=tm_'
alias xiaoees='php -f "/myphp/leaderfit/leaderfit/scripts/xiao-kamille-module-generator.php" --  --module=EkomEstimate --prefix=ees_'
alias xiaoektra='php -f "/myphp/leaderfit/leaderfit/scripts/xiao-kamille-module-generator.php" --  --module=EkomTrainingProducts --prefix=ektra_'
alias xiaolee='php -f "/myphp/leaderfit/leaderfit/scripts/xiao-kamille-module-generator.php" --  --module=LeeTheme --prefix=lee_'
alias xiaoap='php -f "/myphp/leaderfit/leaderfit/scripts/xiao-kamille-module-generator.php" --  --module=Application --prefix=ap_'
alias xiaoip='php -f "/myphp/leaderfit/leaderfit/scripts/xiao-kamille-module-generator.php" --  --module=IpData --prefix=ip_'
alias xiaouf='php -f "/myphp/leaderfit/leaderfit/scripts/xiao-kamille-module-generator.php" --  --module=UserFiles --prefix=uf_'
alias xiaodc='php -f "/myphp/leaderfit/leaderfit/scripts/xiao-kamille-module-generator.php" --  --module=DocumentCollector --prefix=dc_'
alias xiaosrd='php -f "/myphp/leaderfit/leaderfit/scripts/xiao-kamille-module-generator.php" --  --module=Srd --prefix=srd_'
alias xiaosf='php -f "/myphp/leaderfit/leaderfit/scripts/xiao-kamille-module-generator.php" --  --module=ShoppingFeed --prefix=sf_'
alias xiaonul='php -f "/myphp/leaderfit/leaderfit/scripts/xiao-kamille-module-generator.php" --  --module=NullosAdmin --prefix=nul_'
alias xiaofmw='php -f "/myphp/leaderfit/leaderfit/scripts/xiao-kamille-module-generator.php" --  --module=Formaway --prefix=fmw_'
alias xiaoar='php -f "/myphp/leaderfit/leaderfit/scripts/xiao-kamille-module-generator.php" --  --module=ApplicationRedirect --prefix=ar_'

alias prcc='php -f /myphp/leaderfit/leaderfit/scripts/generator.php'
alias cachee='rm -r /myphp/leaderfit/leaderfit/cache'
alias ksql='/Applications/MAMP/Library/bin/mysql --user=root --password=root --database=kamille --execute="DROP DATABASE if exists kamille; CREATE DATABASE kamille character set utf8 collate utf8_general_ci;"; /Applications/MAMP/Library/bin/mysql -u root -proot kamille < /myphp/leaderfit/leaderfit/class-modules/Ekom/assets/db/ekom-kamille.sql; /Applications/MAMP/Library/bin/mysql -u root -proot kamille < /myphp/leaderfit/leaderfit/class-modules/PeiPei/assets/db/peipei.sql; /Applications/MAMP/Library/bin/mysql -u root -proot kamille < /myphp/leaderfit/leaderfit/class-modules/TrainingProducts/assets/db/training_products.sql;'
alias sorm='php -f /myphp/leaderfit/leaderfit/scripts/leaderfit/save-orm-generator.php'


alias morphic='php -f "/myphp/leaderfit/leaderfit/scripts/modules/ApplicationMorphicGenerator/morphic-generator.php" --'
alias morphic_trans='php -f "/myphp/leaderfit/leaderfit/scripts/modules/ApplicationMorphicGenerator/morphic-lingfrench-translation.php" --'





#------------------------------
# MAC
#------------------------------
# https://github.com/lingtalfi/Time-machine-and-shutdown
alias tmdown='cd "/pathto/misc_projects/timemachine-and-shutdown"; ./tmshutdown.sh'
alias kom='ssh kom'
alias vps='ssh vps'
alias prep='ssh preprod'
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

# Setting PATH for Python 3.7
# The original version is saved in .bash_profile.pysave

# http://dev.mysql.com/doc/refman/5.7/en/osx-installation-notes.html
export PATH="$PATH:/usr/local/mysql/bin"
export PATH="/Applications/MAMP/Library/bin:$PATH"


export PATH="/usr/local/bin:$PATH"



export APPLICATION_ENVIRONMENT=dev


export PATH


export PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:$PATH"

export PATH="/usr/local/opt/php@7.2/bin:$PATH"
export PATH="/usr/local/opt/php@7.2/sbin:$PATH"


