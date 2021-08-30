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
## 2. Скачать контейнер nginx с docker hub. И запустить его с параметром -з или -expose.
   ```sh
   docker pull nginx
   
   ```
