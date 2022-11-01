# docker4156

1. 安装docker (windows需要wsl)
2. git clone
3. sh dockerbuild.sh
4. 进入docker desktop应用点击Images 应该有个2004然后run取个名字
5. 点击Containers有可以进入的terminal
6. 打开本地vscode安装docker插件，然后右键你的container有个vscode打开
7. git clone https://github.com/tiany7/COMS-4156-Project
8. 进入目录 直接bazel build :person_service

### mysql-server 
我没有在docker内安装mysql服务，是在host开的mysql-server
*********************************
连接mysql的ip请使用"host.docker.internal"
不是 127.0.0.1 或者 0.0.0.0
使用docker内的vscode的mysql插件尝试连接
端口好像连接conn会默认3306如果有变动自行设置
*********************************


### 安装版本是 ubuntu 20.04 应该可以编译成功
我18.04一直有问题，如果你18.04成功了告诉我

