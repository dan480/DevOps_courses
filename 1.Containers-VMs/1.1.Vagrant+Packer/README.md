# Выполнение:
************

## 1. Установка Packer используя инструкцию на сайте компании HashiCorp.  
   ```sh  
   curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -  
   sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"  
   sudo apt-get update && sudo apt-get install packer  
   ```  
## 2. Установка VirtualBox используя инструкцию на сайте virtualbox. Также установил guest additions.  
   ```sh
   wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -  
   wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -  
   sudo apt-get update  
   sudo apt-get install virtualbox
   sudo apt install build-essential dkms  
   ```
## 3. Установка Vagrant используя инструкцию на сайте компании HashiCorp.  
   ```sh
   curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -  
   sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"  
   sudo apt-get update && sudo apt-get install vagrant  
   ```
## 4.  Создаем папку "http" с файлом preseed.cfg (файл автоматизации установки операционной системы). Создание папки "Scripts" (необязательно) со сценариями( для настройки операционной системы после установки). Затем мы создадим файл конфигурации для Packer. И выполняем команду "packer build *-имя файла конфигурации Packer-". В результате появится файл с расширением .box - который можно использовать в Vagrant. Результат работы показан на скриншоте ниже. Ещё нужно скачать образ операционной системы, который укажем в файле конфигурации Packer.
   ```sh
   sudo mkdir http
   cd http
   sudo nano preseed.cfg
   cd ..
   sudo mkdir scripts
   cd scripts
   sudo nano init.sh
   cd ..
   sudo wget http://cdimage.ubuntu.com/ubuntu/releases/bionic/release/ubuntu-18.04.5-server-amd64.iso
   sudo nano ubuntu1804.json
   packer build ubuntu1804.json
   ```
   <img src="https://github.com/dan480/DevOps_courses/blob/main/1.Containers-VMs/1.1.Vagrant%2BPacker/packer_box_done.png" alt="drawing" width="800"/>  
       
## 5. Создаем виртуальную машину. И подключаемся к ней с помощью логина и пароля.
   ```sh
   vagrant up
   ssh -p2222 vagrant@127.0.0.1
   ```
   <img src="https://github.com/dan480/DevOps_courses/blob/main/1.Containers-VMs/1.1.Vagrant%2BPacker/start_vm1.jpg" alt="drawing"/>

## 6. Добавить chef-рецепты ---

## 7. Проброс портов настраивается в файле Vagrantfile
   ```sh
   # config.vm.forward_port 80, 4567
   ```
## 8. Создать новый шаблон для виртуальной машины с предустановленной mariadb вместо mysql
   В файле конфигурации Packer в разделе 'provisioners' добавляем скрипт, который установит mariadb.


   
