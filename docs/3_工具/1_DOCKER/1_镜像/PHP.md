## 教程
### docker安装php镜像  
docker pull php:5.6-fpm  
参考：  
https://www.runoob.com/docker/docker-install-php.html  

## 部署
docker run --name  myphp-fpm -v /nginx/www:/www  -d php:5.6-fpm
注意：
去掉~/nginx/www:/www的~

mkdir /nginx/conf/conf.d