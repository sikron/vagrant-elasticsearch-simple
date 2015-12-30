# vagrant-elasticsearch-simple
A Vagrant box with Elasticsearch 2 for playing around with.

## Prerequisites
These are things you need to install once on your machine to use this box.

* [Virtualbox](https://www.virtualbox.org/)
```bash
$ sudo apt-get install virtualbox
```
* [Vagrant](http://www.vagrantup.com/)
```bash
$ sudo apt-get install vagrant
```
* Vagrant Virtualbox Guest Plugin
```bash
$ vagrant plugin install vagrant-vbguest
```

## Software installed in the Box
* OpenJDK JRE 7
* Elasticsearch 2.1.1

## Starting the Box (with Provisioning on first start)
```bash
vagrant up
```

## Stopping the Box
```bash
vagrant halt
```

## Suspend/resume the Box
```bash
vagrant suspend/resume
```

## Restart the Box (e.g. after change of Vagrantfile)
```bash
vagrant reload
```

## Destroy/delete the Box
```bash
vagrant destroy
```

## Box Status
```bash
vagrant status
```

## Access the Box via SSH
```bash
vagrant ssh
```

## Access Elasticsearch
The Elasticsearch server-port of the guest is forwarded to the host, so from the host do
```bash
curl -XGET -v http://localhost:9200
```
Also the "head" plugin is installed, so from a browser in the host, just get
```
http://localhost:9200/_plugin/head
```
