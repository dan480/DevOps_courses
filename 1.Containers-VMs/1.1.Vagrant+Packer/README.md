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
## 3. Install Vagrant using the instructions on the HashiCorp website.  
   ```sh
   curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -  
   sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"  
   sudo apt-get update && sudo apt-get install vagrant  
   ```
## 4. Create the "http" folder with the preseed.cfg file (the operating system installation automation file). Creating the "scripts" folder (optional) with scripts( for configuring the operating system after installation). Next, we create a configuration file for Packer. And execute the command "packer build *-name of the packer configuration file-". As a result, a file with the extension will appear .box-an image that can be used in Vagrant.The result of the work is shown in the screenshot below.  
   ```sh
   mkdir http
   sudo nano preseed.cfg
   mkdir scripts
   cd scripts
   sudo nano init.sh
   cd ..
   sudo nano ubuntu1804.json
   packer build ubuntu1804.json
   ```
   <img src="https://github.com/dan480/DevOps_courses/blob/main/1.Containers-VMs/1.1.Vagrant%2BPacker/packer_finish.jpg" alt="drawing" width="800"/>  
# P.S. I created an image from under Windows 10. Initially, I used a virtual machine on Azure with Ubuntu 18.04, but after it turned out to be on a low tariff, virtualization is not supported.
     
## 5. 


   
