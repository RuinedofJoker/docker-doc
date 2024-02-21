```
docker run -p 6379:6379 --name redis-server -d redis:7.0.12 --requirepass 123456
```

/usr/local/etc/redis/redis.conf

要自定义  `redis.conf`  配置文件内容自己添加一个配置文件挂载位置并在容器 run 启动参数里面添加该文件在容器内的位置，如：

```
docker run -p 6379:6379 --name redis-server -v C:/docker/redis/conf/redis.conf:/usr/local/etc/redis/redis.conf -d redis:7.0.12 #redis-server /etc/redis/redis.conf
```

（上面有一点点问题，在排查）



个人喜欢用的 redis 客户端：

Another Redis Desktop

github地址：https://github.com/qishibo/AnotherRedisDesktopManager/releases/tag/v1.6.1
