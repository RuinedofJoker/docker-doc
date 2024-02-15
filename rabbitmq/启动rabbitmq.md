启动容器：

```
docker run -d --name=rabbitmq-server -p5672:5672 -p15672:15672 -v C:/docker/rabbitmq:/var/lib/rabbitmq rabbitmq:3.9.11
```



---



安装管理面板插件：

```bash
#进入rabbitmq容器
docker exec -it rabbitmq-server /bin/bash
#开启插件
rabbitmq-plugins enable rabbitmq_management
```



---



创建用户：

```bash
#要在rabbitmq容器中输入 添加一个 用户名为 root 的用户 密码为123456
rabbitmqctl add_user root 123456
#赋予该用户所有权限
rabbitmqctl set_permissions -p / root ".*" ".*" ".*"
#赋予root用户administrator角色
rabbitmqctl set_user_tags root administrator
#查看用户列表
rabbitmqctl list_users
```



---



安装延迟队列插件：

```bash
#插件github地址 https://github.com/rabbitmq/rabbitmq-delayed-message-exchange/releases
#已经准备好了3.9.0的版本的插件 rabbitmq_delayed_message_exchange-3.9.0.ez
#在 rabbitmq_delayed_message_exchange-3.9.0.ez 文件所在目录下输入以下拷贝插件到容器内
docker cp rabbitmq_delayed_message_exchange-3.9.0.ez rabbitmq-server:/plugins
#进入容器查看是否传输成功
docker exec -it rabbitmq-server /bin/bash
cd /plugins
ls -l | grep delay
#启动插件
rabbitmq-plugins enable rabbitmq_delayed_message_exchange
```

登录RabbitMQ的Web端管理界面
在容器重启完成后，我们可以登录RabbitMQ的Web端管理界面，在Exchanges选项卡下，点击Add a new exchange，在Type里面看是否出现了x-delayed-message选项，整个安装过程就完毕了。