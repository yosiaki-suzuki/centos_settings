alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# firewalld
alias firewalld.start='sudo systemctl start firewalld'
alias firewalld.stop='sudo systemctl stop firewalld'
alias firewalld.status='sudo systemctl status firewalld'
alias firewalld.restart='sudo systemctl restart firewalld'
alias firewalld.list='sudo firewall-cmd --list-all'

# nginx
alias nginx.restart='sudo systemctl restart nginx'
alias nginx.status='sudo systemctl status nginx'
alias nginx.start='sudo systemctl start nginx'
alias nginx.stop='sudo systemctl stop nginx'

# postfix
alias postfix.start='sudo systemctl start postfix'
alias postfix.stop='sudo systemctl stop postfix'
alias postfix.restart='sudo systemctl restart postfix'
alias postfix.status='sudo systemctl status postfix'
