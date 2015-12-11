## Giant Swarm Developer Stack Setup
This is the Giant Swarm GiantOS setup process for developers and operations staff who would like to kick the tires on GiantOS. This guide is for OSX setups, but can be modified to run on Linux.

### Prerequisites
The following software packages are required for this guide:

* Brew
* Homebrew Cask
* Vagrant 1.7.4
* Virtualbox 5.0.10
* Vagrant Hostmanager

#### Install Brew
[Brew](http://brew.sh/) is a simple package manager for OSX. Installing `brew` is easy:

```
$ ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

Test it and then update it:

```
$ brew -v
Homebrew 0.9.5 (git revision 6fe85; last commit 2015-11-30)
$ brew update
```

#### Install Homebrew Cask
[Homebrew Cask](http://caskroom.io/) is an extended package manager for Brew. Installing it is easy:

```
$ brew tap caskroom/cask
```

#### Install Virtualbox
[Virtualbox](https://www.virtualbox.org/wiki/Downloads) is a free virtualization manager for OSX. Installing it is easy:

```
$ brew cask install virtualbox
```

#### Install Vagrant
[Vagrant]() is a tool for building development environments on your local machine. It can also be used to do remote deployments to production setups.

Install it by doing the following:

```
$ brew cask install vagrant
```

#### Install Vagrant Hostmanager
Vagrant Hostmanager is a plugin that manages the `/etc/hosts`file on guests within a multi-machine environment. Install it by doing the following:

```
$ vagrant plugin install vagrant-hostmanager
```

### Start the Controller Node
The controller node is started via `vagrant` by doing the following:

```
$ cd dev-machine
$ vagrant up
```

Once the machine is done booting, you may ssh into it:

```
$ vagrant ssh
```

Issue a reboot to the machine to finish up installs:

```
vagrant@vagrant-ubuntu-wily-64:~$ sudo reboot
```

