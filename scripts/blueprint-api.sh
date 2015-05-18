#/bin/bash

# list blueprints
# curl -H "X-Requested-By: ambari" -X GET -u admin:admin localhost:8080/api/v1/blueprints

# list hosts
# curl -H "X-Requested-By: ambari" -X GET -u admin:admin localhost:8080/api/v1/hosts

# export blueprint
# curl -H "X-Requested-By: ambari" -X GET -u admin:admin localhost:8080/api/v1/clusters/sandbox?format=blueprint

# import blueprint
# curl -H "X-Requested-By: ambari" -X POST -d @blueprints/sandbox/sandbox.json -u admin:admin localhost:8080/api/v1/blueprints/sandbox

# create cluster
# curl -H "X-Requested-By: ambari" -X POST -d @blueprints/sandbox/snadbox-template.json -u admin:admin localhost:8080/api/v1/clusters/sandbox

