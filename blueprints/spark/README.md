HDP Cluster with Spark
======================

Deploys 10 nodes cluster including Spark.

HDP components includeing
- Core: HDFS, YARN, Zookeeper
- Data store: HBase
- Processing: MRv2, Tez, Hive, Pig, Spark
- Workflow: Oozie, Falcon
- Others: Slider, Client

# Masters
Master node x 3.
- Master1: Namenode, History Server, ZooKeeper1, Oozie Server, Falcon Server
- Master2: ResourceManager, Hive Metastore, Hive Server2, ZooKeeper2, WebHCat Server, Spark History Server
- Master3: SecoundaryNamenode, HMaster, ZooKeeper3, App Timeline Server

# Core Slaves
Slave node x 6
- DataNode, NodeManager, RegionServer

# Edges
Edge node x 1
- Knox Gateway, Client, Ambari Metrics Collector
