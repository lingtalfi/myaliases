######################################
# ling server aliases
######################################
# how to
##########
# Copy paste this code to your server in a file named ling-server-aliases.sh
# in your .bashrc, call this file ling-server-alias.sh by using the source command


dbName=root
dbPass=root
dbUserName=root


alias aa='vim /home/ling/tools/ling-server-aliases.sh'
alias aas='source /home/ling/tools/ling-server-aliases.sh'
alias gitpull='git fetch --all; git reset --hard origin/master';

# apache
alias ar='sudo systemctl restart apache2'
alias alog='sudo tail -f -n100 /var/log/apache2/ling/all.log'


# my kamille app specific
alias lback='/usr/bin/mysqldump -u $dbUserName -p$dbPass $dbName > /myphp/leaderfit/store/Ekom/database/kamille.sql'
alias lrestore='/usr/bin/mysql -u $dbUserName -p$dbPass $dbName < /myphp/leaderfit/store/Ekom/database/kamille.sql'
alias plog='tail -f -n 100 /myphp/leaderfit/logs/php.log.txt'
alias llog='tail -f -n 100 /myphp/leaderfit/logs/kamille.log.txt'
alias cachee='sudo rm -rf /myphp/leaderfit/cache'
alias lee='cd /myphp/leaderfit'


function myprint {
    echo -e "\033[0;32m$1\033[0m"
}

function doThePull {
    myprint "updating uni tool"; uni update;
    myprint "updating kit (kamille installer tool)"; cd "/myphp/kamille-installer-tool"; gitpull;
    myprint "pulling all Kamille modules"; cd "/myphp/kamille-modules"; kamille updateall -xx;
    #myprint "pulling all Kamille widgets"; cd "/myphp/kamille-widgets"; kamille wupdateall -xx;
    myprint "reimporting all planets from universe"; cd "/myphp/universe"; uni importall -f;

    # below does not work: fatal: ambiguous argument 'origin/master': unknown revision or path not in the working tree.
    # fix it by adding a remote: git remote add origin https://github.com/lingtalfi/leaderfit.git
    # instead, do a leepush from local...
    myprint "pulling lee app"; cd /myphp/leaderfit; gitpull;
    myprint "restoring kamille db"; lrestore;


}

alias pulll=doThePull