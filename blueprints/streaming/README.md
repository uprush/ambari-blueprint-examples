Streaming HDP Cluster
=====================

Deploys 10 nodes cluster including Storm and Kafka.

HDP components includeing
- Core: HDFS, YARN, Zookeeper
- Data store: HBase
- Processing: MRv2, Tez, Hive, Pig
- Streaming: Kafka, Storm, Flume (for demo purpose)
- Workflow: Oozie, Falcon, Sqoop
- Others: Slider, Client

# Masters
Master node x 3.
- Master1: Namenode, History Server, ZooKeeper1, Oozie Server, Falcon Server
- Master2: ResourceManager, Hive Metastore, Hive Server2, ZooKeeper2, WebHCat Server, Storm Nimbus, Storm UI Server
- Master3: SecoundaryNamenode, HMaster, ZooKeeper3, App Timeline Server, Storm DRPC Server

# Core Slaves
Slave node x 3
- DataNode, NodeManager, RegionServer

# Streaming Slaves
Slave node x 3
- Kafka Broker, Storm Supervisor

# Edges
Edge node x 1
- Knox Gateway, Client, Ambari Metrics Collector, Flume
