# to install: do this as root: 
# mkdir -p /root/tools; cd /root/tools; wget https://github.com/lingtalfi/myaliases/blob/master/ling-root-alias.sh; chmod u+x ling-root-alias.sh

alias aa='vim /root/tools/ling-root-alias.sh'
alias aas='source /root/tools/ling-root-alias.sh'
alias ar='service apache2 reload'
alias alog='tail -f -n100 /var/log/apache2/ling/all.log'