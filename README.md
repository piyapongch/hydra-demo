# hydra-demo
Hydra with backlight demo web application

## Documents
+ [Dive into Hydra] (https://github.com/projecthydra/hydra/wiki/Dive-into-Hydra)
+ [The Hydra Project] (https://wiki.duraspace.org/display/hydra/The+Hydra+Project)
+ [GitHub] (https://github.com/projecthydra/hydra)

## System Requirements
Your system should have the following installed before beginning the walkthrough
+ [git] (http://git-scm.com/) >= 1.7.9
+ [Vagrant] (http://www.vagrantup.com/downloads.html) >= 1.5.2
+ [VirtualBox] (https://www.virtualbox.org/wiki/Downloads) >= 4.3.6
 
## Running hydra-demo
```shell
$ vagrant up
```
See [vagrant documentation] (http://docs.vagrantup.com/v2/getting-started/index.html) to further interactions with the hydra-demo server

### Blacklight User Interface
+ Home: <http://hydra-demo:3000/>
+ Add/Edit/Delete: <http://hydra-demo:3000/books/>
+ Fedora: <http://hydra-demo:8983/fedora/>
+ Solr: <http://hydra-demo:8983/solr/>

### Start application servers

```shell
$ rake jetty:start
$ rails server -d
```

### Stop application servers

```shell
$ kill -9 $(lsof -i :3000 -t)
$ rake jetty:stop
```


