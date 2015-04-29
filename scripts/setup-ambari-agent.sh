#!/bin/bash

wget -nv http://public-repo-1.hortonworks.com/ambari/centos6/2.x/updates/2.0.0/ambari.repo -O /etc/yum.repos.d/ambari.repo
yum install ambari-agent -y

# Configure the Ambari Agent by editing the ambari-agent.ini file.
#
# vi /etc/ambari-agent/conf/ambari-agent.ini
#
# [server]
# hostname={your.ambari.server.hostname}
# url_port=4080
# secured_url_port=8443

# Start Ambari agent
ambari-agent start
