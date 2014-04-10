yum install -y ualib-rails git java-oracle sqlite-devel
yum remove -y ualib-centos6
yum clean metadata
yum groupinstall -y "Development Tools"
cd /var/www/sites/hydra-demo
bundle install 
rails g hydra:jetty
rake jetty:start
rails server -d
