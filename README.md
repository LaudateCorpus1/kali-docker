# Kali Docker
An easy-peasy script to get started with Kali Linux in Docker.

**Notice:** The script makes use of full container capabilities (`--privileged`) and opens up xhost server on the host which might be a bad idea from the security point of view. You must be held responsible for any implications that might occur due to this.

**Tested on:**
+ Kali Linux 2019.4
+ Ubuntu 18.04.3
+ Debian 10

**Features:**
+ Builds an updated Kali Linux Docker image.
+ Installs the packages listed in `packages.txt` to the Docker image while building.
+ The `image-name` (the name you give while building the image) directory act as a volume mount between the Kali Linux Docker container and the host OS for file sharing and for persistence of storage. Inside the container, save anything to `/root` and access it on host in the `image-name` directory.

**Steps:**
+ `git clone https://github.com/thirdbyte/kali-docker`
+ `cd kali-docker`
+ Edit the `packages.txt` and append all the packages you want to install, one in a line, while building the Kali Linux Docker image.
+ `chmod +x .`
+ `./build image-name`
+ `./run image-name`

To remove an image that was built using `./build`
+ `./remove image-name`

That's it!
