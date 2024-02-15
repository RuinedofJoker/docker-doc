mysql8 容器启动命令：

```
docker run --name mysql-server -d -p 3306:3306 --restart always -v /docker/mysql/log:/var/log/mysql -v /docker/mysql/data:/var/lib/mysql -v /docker/mysql/conf:/etc/mysql/conf.d -e MYSQL_ROOT_PASSWORD=123456 mysql:8.0.36
```
