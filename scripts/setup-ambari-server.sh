#!/bin/bash

wget -nv http://public-repo-1.hortonworks.com/ambari/centos6/2.x/updates/2.0.0/ambari.repo -O /etc/yum.repos.d/ambari.repo
yum install ambari-server -y
ambari-server setup -s

ambari-server start
