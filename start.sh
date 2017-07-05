#/bin/bash  
# petit script tout simple pour relancer une connexion ssh reverse automatiquement
# zf170705.1409
# source: https://stackoverflow.com/questions/24629841/how-can-know-ssh-is-disconected-and-retry-with-bash-script

./auto_retry_ssh.sh -R 13580:192.168.1.135:80 ubuntu@sdftests.epfl.ch -N &
./auto_retry_ssh.sh -R 17222:192.168.1.172:22 ubuntu@sdftests.epfl.ch -N &
./auto_retry_ssh.sh -R 17259:192.168.1.172:5900 ubuntu@sdftests.epfl.ch -N &

