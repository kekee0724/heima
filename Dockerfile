# 指定基础镜像
FROM java:8-alpine
# 配置环境变量，JDK的安装目录
ENV JAVA_DIR=/usr/local

# 拷贝java项目的包
COPY ./docker-demo.jar /tmp/app.jar

# 暴露端口
EXPOSE 8090
# 入口，java项目的启动命令
ENTRYPOINT java -jar /tmp/app.jar