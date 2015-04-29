#!/bin/bash

yum -y install wget
yum -y install ntp
chkconfig ntpd on
/etc/init.d/ntpd start
chkconfig iptables off
/etc/init.d/iptables stop
setenforce 0
sed -i 's/SELINUX=enforcing/SELINUX=disabled/g' /etc/selinux/config
sh -c 'echo "* soft nofile 100000" >> /etc/security/limits.conf'
sh -c 'echo "* hard nofile 100000" >> /etc/security/limits.conf'
sh -c 'echo never > /sys/kernel/mm/redhat_transparent_hugepage/defrag'
sh -c 'echo never > /sys/kernel/mm/redhat_transparent_hugepage/enabled'
