# Выполнение:
************
# Для выполнения задания должен быть установлен Docker
# Для удобства добавьте свое имя пользователя в группу docker
```sh
sudo usermod -aG docker ${USER}
su - ${USER}
````

## 1. Создадим папку и перейдем в нее.  
   ```sh  
   sudo mkdir docker
   cd docker
   ```  
## 2. Скачать контейнер nginx с docker hub. И запустить его с параметром -p или -expose.
   ```sh
   docker pull nginx
   docker run --name test-nginx -p 8080:80 nginx
   ```
   <img src="https://github.com/dan480/DevOps_courses/blob/main/1.Containers-VMs/1.2.Docker/nginx.jpg" /> 
## 3. Скачать контейнер MySQL с docker hub. И запустить его с параметром -volume, -v. После запуска контейнера подключитесь к базе, создайте нового пользователя и новую базу.
   ```sh
   docker pull mysql
   docker run --name=db -d -p 3306:3306 -v ~/docker/mysql/datadir:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=123 mysql
   docker exec -it db /bin/bash
   ```
   
   <img src="https://github.com/dan480/DevOps_courses/blob/main/1.Containers-VMs/1.2.Docker/mysql.jpg" />
   
   ```sh
   mysql -u root -p
   CREATE USER 'test_user'@'localhost' IDENTIFIED BY 'pass';
   CREATE DATABASE DB_TEST;
   ```
   <img src="https://github.com/dan480/DevOps_courses/blob/main/1.Containers-VMs/1.2.Docker/DB_TEST.jpg" />
