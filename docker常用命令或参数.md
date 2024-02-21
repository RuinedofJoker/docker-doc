```bash
--restart 用于指定自动重启docker容器策略
#no 默认值，表示容器退出时，docker不自动重启容器
docker run --restart=no [容器名]

#on-failure 若容器的退出状态非0，则docker自动重启容器，还可以指定重启次数，若超过指定次数未能启动容器则放弃
docker run --restart=on-failure:3 [容器名]

#always 容器退出时总是重启
docker run --restart=always [容器名]

#unless-stopped 容器退出时总是重启，但不考虑Docker守护进程启动时就已经停止的容器
docker run --restart=unless-stopped [容器名]

#如果容器启动时没有设置–restart参数，则通过下面命令进行更新：
docker update --restart=always [容器名]
```

