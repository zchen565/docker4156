# docker4156

### this only build an image, not a volume or sth
1. install docker (windows need wsl)
2. git clone 
3. sh dockerbuild.sh
4. enter docker desktop and click 'Images' via 2004 then run 
5. click 'Containers' and you can enter terminal
6. open the local vscode and install docker plugin，right click your container and attach with vscode

### Set up
1. git clone https://github.com/tiany7/COMS-4156-Project 4156
2. cd /4156/services/person_service
3. bazel build :person_service
4. bazel run :person_service
5. cd /4156/client/person_client
6. bazel build :person_client
7. bazel run :person_client
(or you can run directly)
- there is an init db service in /4156/util go to the directory
- bazel run :db_init_tables
8. bazel test :person_service_test (in unit_test folder)

### mysql-server 
- I didn't install mysql-server insided the docker
- the mysql-server is installed in the host machine
#### if you know how to connect to a mysql-server installed in the docker from the docker please notify me, I don't know how to set the docker port correctly
*********************************
- connecting the host mysql-server use host name / ip as "host.docker.internal"
- not 127.0.0.1 or 0.0.0.0
- try mysql plugin from docker to connect, need add port 3306
- in code, it seems no need to add port "con = driver->connect("host.docker.internal", "root", "");"
*********************************


### ubuntu version is 20.04
I have trouble with 18.04 of some DYYNAMIC_ALLOC issue

