# How was it?
************

## 1. Install Packer using the instructions on the HashiCorp website.  
   ```sh  
   curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -  
   sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"  
   sudo apt-get update && sudo apt-get install packer  
   ```  
## 2. Install VirtualBox using the instructions on the virtualbox website. Also install guest additions.  
   ```sh
   wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -  
   wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -  
   sudo apt-get update  
   sudo apt-get install virtualbox-6.1  
   sudo apt install build-essential dkms  
   ```
## 3. 



![alt text](https://github.com/dan480/DevOps_courses/blob/main/1.Containers-VMs/1.1.Vagrant%2BPacker/packer_finish.jpg?raw=true)
   
