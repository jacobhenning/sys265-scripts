#secure-ssh.sh
#author jacobhenning
#creates a ssh user called $1
#adds a public key to that users authorized keys file
#removes the ability  to root ssh

#create ssh user
username=$1

useradd ${username}
mkdir /home/${username}/.ssh
cp /home/jake/sys265-scripts/linux/public-keys/sys265.pub /home/${username}/.ssh/authorized_keys
chmod 700 /home/${username}/.ssh
chmod 600 /home/${username}/.ssh/authorized_keys
chown -R  ${username}:${username} /home/${username}/.ssh
