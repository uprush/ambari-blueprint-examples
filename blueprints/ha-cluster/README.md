HA HDP Cluster
=================

Likely 20 nodes that represents a good start on a real production cluster with HA.

HDP components includeing
- Core: HDFS, YARN, Zookeeper
- Data store: HBase
- Processing: MRv2, Tez, Hive, Pig
- Workflow: Oozie, Falcon
- Others: Slider, Client

# Masters
Master node x 5. Master HA is configured.
- Master1: Namenode, HMaster, ZK1
- Master2: ResourceManager, Hive Server2, ZK2
- TODO

# Slaves

# Edges
Edge node x 1

