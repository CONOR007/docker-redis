docker image build -t docker-redis:0.0.1 .

docker container run -p 6379:6379 -it docker-redis:0.0.1 /bin/bash
or => docker container run --rm -p 6379:6379 -it docker-redis:0.0.1 /bin/bash
ls
cd redis-6.0.9
make
cd ./src/redis-server

docker login
image tag koa-demo:0.0.1 conor007a/koa-demo:0.0.1
docker image push conor007a/koa-demo:0.0.1

docker container ls
docker container ls -all
docker container kill 50b2aa067544
docker container rm 50b2aa067544
docker attach 7075a5363451 

容器使用：https://www.runoob.com/docker/docker-container-usage.html

Liunx命令
cd /etc
rm -rf 6379.conf 
cp /app/redis-6.0.9/redis.conf ./6379.conf
cd redis
mv ../6379.conf ./
vim 6379.conf
bash: vi: command not found
apt-get install vim
apt-get update
apt-get install vim
vim 6379.conf
/6397 回车查找  按n下一个 把port改为1234
/daemonize 回车查找 把no 改为 yes (在后台运行)
按esc :wq回车 保存退出
redis-server 6379.conf
redis-cli
select 1 切换到1号数据库


要连接docker远程数据库 记得将 redis.conf 配置文件的 bind 和 protected-mode 修改如下：
# 绑定的端口号
bind 0.0.0.0
# 关闭保护模式
protected-mode no