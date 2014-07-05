# hydra-demo
Hydra with backlight demo web application

## Documents
+ [Drive into Hydra] (https://github.com/projecthydra/hydra/wiki/Dive-into-Hydra)
+ [The Hydra Project] (https://wiki.duraspace.org/display/hydra/The+Hydra+Project)
+ [GitHub] (https://github.com/projecthydra/hydra)

## System Requirements
Your system should have the following installed before beginning the walkthrough
+ [ruby] (https://www.ruby-lang.org/en/) 1.9.3 or 2.0.0
+ [rails] (http://rubyonrails.org/) ~>3.2.13 or ~>4.0.0
+ [git] (http://git-scm.com/)
+ [java] (http://www.java.com/en/) runtime >= 6.0

## Running hydra-demo

### Install Ruby and Rails using RVM

```shell
$ curl -sSL https://get.rvm.io | bash -s stable --ruby
$ curl -sSL https://get.rvm.io | bash -s stable --rails
$ git clone https://github.com/ualbertalib/hydra-demo.git
$ cd hydra-demo
$ rails g hydra:jetty*
```
  \* if you are having problem with writing tmp file, probably you do not have unzip installed. to install it using command below
```shell
$ sudo apt-get install unzip
```
  
### Start application servers

```shell
$ rake jetty:start
$ rails server -d
```

### Blacklight User Interface
+ Home: <http://localhost:3000/>
+ Add/Edit/Delete: <http://localhost:3000/books/>
+ Fedora: <http://localhost:8983/fedora/>
+ Solr: <http://localhost:8983/solr/>

### Stop application servers

```shell
$ kill -9 $(lsof -i :3000 -t)
$ rake jetty:stop
```


