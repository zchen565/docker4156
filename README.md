# docker4156

### this only build an image
1. install docker (windows need wsl)
2. git clone https://github.com/zchen565/docker4156 
3. sh dockerbuild.sh
4. enter docker desktop and click 'Images' via 4156 then run 
5. click 'Containers' and you can enter terminal
6. open the local vscode and install docker plugin，right click your container and attach with vscode

### Set up MySQL in Docker
1. go to docker terminal
2. $service mysql start
2. $mysql
3. > ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY '123456';
- the connection is (127.0.0.3306, root, 123456) 
- NOTE!! the current setup cannot connected by host, only connect it via project inside docker

### Bazel build Project
- the database and table are not unified, change by your own currently
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

### ubuntu version is 20.04
I have trouble with 18.04 of some DYYNAMIC_ALLOC issue

