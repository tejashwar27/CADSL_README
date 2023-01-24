# What is distrobox?
Simply put it's a fancy wrapper around podman or docker to create and start containers highly integrated with the hosts.
Different containers with different versions of Linux OS can be created. This will be helpful with resolving any 
simulator's OS dependancies and other dependancies without needing to install the required OS.

Distrobox can create multiple containers with required OS with shared home dir with the host OS. In these containers
required simulators can be installed.

Refer to following URL for more info https://github.com/89luca89/distrobox

**Note: Tested on Ubuntu 18.04**

# Prerequisites
Distrobox works with podman or docker. Tested with docker.

Docker installation (Don't use snap package. It creates root related issues later)
```bash
sudo apt install docker.io
```

For distrobox installation curl is need. Can be installed using:
```bash
sudo apt install curl
```

# Installation

Installation using curl:
```bash
curl -s https://raw.githubusercontent.com/89luca89/distrobox/main/install | sudo sh
```
If this fails then please refer to the original repo for updated instructions. (https://github.com/89luca89/distrobox)

# Testing

Refer to following steps for creation of the container, basic usage and testing

Create a new container:
--------------
```bash
distrobox create -i ubuntu:16.04 -H /home/tejeshwar/ub16_home -n ub16
```
It will prompt before downloading the image file. Type 'yes'. Following options are used in the above command:
1. -i: Input IMAGE
2. -H: Custom home dir for the container
3. -n: Name of the container
You can use different name and home directory path

Check the list of containers:
--------------
```bash
distrobox list
```
If container is successfully created it should show up in the list.

Example output:
```bash
ID           | NAME         | STATUS           | IMAGE        
23f9d3e63225 | ub16         | running          | ubuntu:16.04    
```
Enter the container
--------------
Enter the container using following:
```bash
distrobox enter ubuntu-16-04
```
It should show up on terminal as:
```bash
<user_name>@ubuntu-16-04:~$
```
Alias can be setup in the .bashrc file for entering into container

Check if apt is working
--------------
Check if sudo apt is working by installing git:
```bash
sudo apt install git
```

Exit the container
------------
One can exit the container by simply using exit command:
```bash
exit
```
Note that this will not stop the container.

Check used resources
-----
From the host terminal usage of the distrobox containers can be checked using:
```bash
docker system df -v
```


