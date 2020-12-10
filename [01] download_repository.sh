#!/bin/bash

sudo yum -y install httpd

sudo systemctl start httpd
sudo yum -y install wget

sudo mkdir -p /var/www/html/cloudera-repos
sudo wget --recursive --no-parent --no-host-directories https://archive.cloudera.com/cdh6/6.3.2/parcels/ -P /var/www/html/cloudera-repos
sudo wget --recursive --no-parent --no-host-directories https://archive.cloudera.com/gplextras6/6.3.2/parcels/ -P /var/www/html/cloudera-repos
sudo chmod -R ugo+rX /var/www/html/cloudera-repos/cdh6
sudo chmod -R ugo+rX /var/www/html/cloudera-repos/gplextras6


sudo mkdir -p /var/www/html/cloudera-repos
sudo wget --recursive --no-parent --no-host-directories https://archive.cloudera.com/accumulo-c5/parcels/1.7.2/ -P /var/www/html/cloudera-repos
sudo chmod -R ugo+rX /var/www/html/cloudera-repos/accumulo-c5

sudo mkdir -p /var/www/html/cloudera-repos
sudo wget --recursive --no-parent --no-host-directories https://archive.cloudera.com/spark2/parcels/2.4.0.cloudera2/ -P /var/www/html/cloudera-repos
sudo chmod -R ugo+rX /var/www/html/cloudera-repos/spark2

sudo mkdir -p /var/www/html/cloudera-repos
sudo wget --recursive --no-parent --no-host-directories https://archive.cloudera.com/sqoop-teradata-connector1/1.7.1c6/parcels/ -P /var/www/html/cloudera-repos
sudo wget --recursive --no-parent --no-host-directories https://archive.cloudera.com/sqoop-netezza-connector1/1.5.1c6/parcels/ -P /var/www/html/cloudera-repos
sudo wget --recursive --no-parent --no-host-directories https://archive.cloudera.com/sqoop-connectors/parcels/1.7.23/ -P /var/www/html/cloudera-repos
sudo chmod -R ugo+rX /var/www/html/cloudera-repos/sqoop-teradata-connector1
sudo chmod -R ugo+rX /var/www/html/cloudera-repos/sqoop-netezza-connector1
sudo chmod -R ugo+rX /var/www/html/cloudera-repos/sqoop-connectors

sudo yum -y install httpd
sudo systemctl start httpd
sudo mkdir -p /var/www/html/cloudera-repos/cm6
wget https://archive.cloudera.com/cm6/6.3.1/repo-as-tarball/cm6.3.1-redhat7.tar.gz
tar xvfz cm6.3.1-redhat7.tar.gz -C /var/www/html/cloudera-repos/cm6 --strip-components=1
sudo chmod -R ugo+rX /var/www/html/cloudera-repos/cm6

sudo mkdir -p /var/www/html/cloudera-repos
sudo wget --recursive --no-parent --no-host-directories https://archive.cloudera.com/cm6/6.3.1/redhat7/ -P /var/www/html/cloudera-repos
sudo wget https://archive.cloudera.com/cm6/6.3.1/allkeys.asc -P /var/www/html/cloudera-repos/cm6/6.3.1/
