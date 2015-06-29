#!/bin/bash

for NODE in `cat ../conf/hosts`
do
    ssh -o StrictHostKeyChecking=no $NODE "exit" && echo "$NODE    OK"
    sleep 1
done
