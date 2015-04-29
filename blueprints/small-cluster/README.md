Small HDP Cluster
=================

Likely 8-10 nodes that represent a standard cluster.

HDP components includeing
- Core: HDFS, YARN, Zookeeper
- Data store: HBase
- Processing: MRv2, Tez, Hive, Pig
- Workflow: Oozie, Falcon
- Others: Slider, Client

# Masters
Master node x 3.
- Master1: Namenode, HMaster, ZK1
- Master2: ResourceManager, Hive Server2, ZK2
- TODO

# Slaves

# Edges
Edge node x 1

