FROM node
#拷贝当前目录文件到app
COPY . /app
#创建app文件夹
WORKDIR /app
#下载 Redis 源码
RUN wget https://download.redis.io/releases/redis-6.0.9.tar.gz
#解压 Redis 压缩包
RUN tar xzf redis-6.0.9.tar.gz
#将容器 5000 端口暴露出来， 允许外部连接这个端口
EXPOSE 5000/tcp