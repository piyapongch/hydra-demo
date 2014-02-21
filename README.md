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

## Running hydra-demo from source

### Install Ruby and Rails using RVM

```shell
$ curl -sSL https://get.rvm.io | bash -s stable --rails
```

### Start application servers

```shell
$ git clone https://github.com/ualbertalib/hydra-demo.git
$ cd hydra-demo
$ bundle install
$ rake jetty:start
$ rails server
```

### Testing
+ Point your browser to <http://locahost:3000/> and try searching
+ Fedora instance: <http://localhost:8983/fedora/>
+ Solr instance: <http://localhost:8983/solr/>

### Stop application servers

```shell
$ ^C
$ rake jetty:stop
```


