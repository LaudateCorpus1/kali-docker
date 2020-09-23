# Kali Docker
An easy-peasy script to get started with Kali Linux in Docker.

**Blog Post:** [https://gist.github.com/thirdbyte/b85b720a30b88e537c28851c86a462f7](https://gist.github.com/thirdbyte/b85b720a30b88e537c28851c86a462f7)

**Notice:** Docker must be installed before hand.

**Tested on:**
+ Kali Linux 2019.4
+ Ubuntu 18.04.3
+ Debian 10

**Features:**
+ Builds an updated Kali Linux Docker image.
+ Installs the packages listed in `packages.txt` to the Docker image while building.
+ The `root` directory act as a bridge between the Kali Linux Docker container and the host OS for file sharing and for persistence of storage.

**Steps:**
+ `git clone https://github.com/thirdbyte/kali-docker`
+ `cd kali-docker`
+ Edit the `packages.txt` and type in all the packages you want to install (one in a line) while building the Kali Linux Docker image.
+ `chmod +x .`
+ `./build image-name`
+ `./run image-name`

To remove an image that was built using `./build`
+ `./remove image-name`

That's it!
