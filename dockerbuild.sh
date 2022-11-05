docker pull ubuntu:20.04

#Generate the Dockerinfo file (with custom user)
USERNAME=`id -u -n`
GROUPNAME=`id -g -n`
MY_UID=`id -u`
MY_GID=`id -g`

docker build -t 4156 --build-arg UNAME=${USERNAME} --build-arg GNAME=${GROUPNAME} --build-arg UID=${MY_UID} --build-arg GID=${MY_GID} .