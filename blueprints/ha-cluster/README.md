HDP Cluster with HA (WIP)
=========================

Likely 20 nodes cluster that represents a good start on a real production cluster with HA. This is working in progress.

HDP components includeing
- Core: HDFS, YARN, Zookeeper
- Data store: HBase
- Processing: MRv2, Tez, Hive, Pig, Spark
- Streaming: Kafka, Storm, Flume
- Workflow: Oozie, Falcon
- Others: Slider, Client

# Masters
Master node x 5
- Master1: Namenode, History Server, Oozie Server, Falcon Server
- Master2: ResourceManager, Hive Metastore, Hive Server2, WebHCat Server
- Master3: SecoundaryNamenode, HMaster, ZooKeeper1, App Timeline Server
- Master4: ZooKeeper2
- Master5: ZooKeeper3

# Core Slaves
Slave node x 6
- DataNode, NodeManager, RegionServer

# Operation
- Ambari Metrics Collector

# Edges
Edge node x 2
- Knox Gateway, Client
- Knox Gateway, Client
