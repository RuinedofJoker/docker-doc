启动容器：

```
docker run -itd --name mongo-server -v C:/docker/mongodb/data:/data/db -p 27017:27017 mongo:7.0.5 --auth
```



---



创建用户：

```bash
#进入容器并进入数据库(连接客户端6以前使用 mongo; 6以后使用 mongosh)
docker exec -it mongo-server mongosh admin
#创建用户名为 root 的用户并赋予管理员权限
db.createUser({ user:'root',pwd:'123456',roles:[ { role:'userAdminAnyDatabase', db: 'admin'},'readWriteAnyDatabase']});
```

```
【user:‘root’ 】：设置用户名为root
【pwd:‘123456’】：设置密码为123456
【role:‘userAdminAnyDatabase’】：只在admin数据库中可用，赋予用户所有数据库的userAdmin权限
【db: ‘admin’】：可操作的数据库
【‘readWriteAnyDatabase’】：赋予用户读写权限
```



---



连接、测试：

```bash
#连接mongo数据库
db.auth('root', '123456')
#查看集合
show collections

#使用 test 数据库
use test

#测试数据库，插入一条语句
db.mycollection.insert({"name":"zhangsan","age":18})

#测试数据库，查询刚才插入的语句
db.mycollection.find()

#把刚刚的集合清空
db.mycollection.remove()

#删除刚刚的集合
db.mycollection.drop()
```



---



官方GUI客户端下载地址：https://www.mongodb.com/try/download/compass
