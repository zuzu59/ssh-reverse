#/bin/bash  
# petit script tout simple pour relancer une connexion ssh reverse automatiquement
# zf170705.1409
# source: https://stackoverflow.com/questions/24629841/how-can-know-ssh-is-disconected-and-retry-with-bash-script


if [ -z "$1" ]
then
        echo '''
        Please also provide ssh connection details.
        '''
        exit 1
fi  
retries=0
repeat=true
today=$(date)  
while "$repeat"
do
        ((retries+=1)) &&
        echo "Try number $retries..." &&
        today=$(date) &&
        ssh "$@" &&
#        repeat=false
        sleep 5
done  
echo """
        Disconnected sshx after a successful login.
        Total number of tries = $retries
        Connected at:
        $today
"""

