****************************************************************************************************************************************
Hadoop Ecosystem
****************************************************************************************************************************************

This repository will keep track of Hadoop related codes, scripts, and relevant information around Big Data and its 
Eco-system tools..

The Hadoop platform consists of two key services: a reliable, distributed file system called Hadoop Distributed File System (HDFS) 
and the high-performance parallel data processing engine called Hadoop MapReduce, described in MapReduce below. Hadoop was created 
by Doug Cutting and named after his son’s toy elephant. Vendors that provide Hadoop-based platforms include Cloudera, Hortonworks, 
MapR, Greenplum, IBM, and Amazon.

The combination of HDFS and MapReduce provides a software framework for processing vast amounts of data in parallel on large clusters 
of commodity hardware (potentially scaling to thousands of nodes) in a reliable, fault-tolerant manner. Hadoop is a generic processing framework designed to execute queries and other batch read operations against massive datasets that can scale from tens of terabytes to petabytes in size.

The popularity of Hadoop has grown in the last few years, because it meets the needs of many organizations for flexible data analysis capabilities with an unmatched price-performance curve. The flexible data analysis features apply to data in a variety of formats, from unstructured data, such as raw text, to semi-structured data, such as logs, to structured data with a fixed schema.

Hadoop has been particularly useful in environments where massive server farms are used to collect data from a variety of sources. 
Hadoop is able to process parallel queries as big, background batch jobs on the same server farm. This saves the user from having to acquire additional hardware for a traditional database system to process the data (assume such a system can scale to the required size). Hadoop also reduces the effort and time required to load data into another system; you can process it directly within Hadoop. This overhead becomes impractical in very large data sets.

The Hadoop ecosystem includes other tools to address particular needs. Hive is a SQL dialect and Pig is a dataflow language for that hide the tedium of creating MapReduce jobs behind higher-level abstractions more appropriate for user goals. Zookeeper is used for federating services and Oozie is a scheduling system. Avro, Thrift and Protobuf are platform-portable data serialization and description formats.

 
****************************************************************************************************************************************
MapReduce
****************************************************************************************************************************************
MapReduce is now the most widely-used, general-purpose computing model and runtime system for distributed data analytics. It provides a flexible and scalable foundation for analytics, from traditional reporting to leading-edge machine learning algorithms. In the MapReduce model, a compute “job” is decomposed into smaller “tasks” (which correspond to separate Java Virtual Machine (JVM) processes in the Hadoop implementation). The tasks are distributed around the cluster to parallelize and balance the load as much as possible. The MapReduce runtime infrastructure coordinates the tasks, re-running any that fail or appear to hang. Users of MapReduce don’t need to implement parallelism or reliability features themselves. Instead, they focus on the data problem they are trying to solve.

****************************************************************************************************************************************
Pig
****************************************************************************************************************************************
Pig is a platform for constructing data flows for extract, transform, and load (ETL) processing and analysis of large datasets. Pig Latin, the programming language for Pig provides common data manipulation operations, such as grouping, joining, and filtering. Pig generates Hadoop MapReduce jobs to perform the data flows. This high-level language for ad hoc analysis allows developers to inspect HDFS stored data without the need to learn the complexities of the MapReduce framework, thus simplifying the access to the data.

The Pig Latin scripting language is not only a higher-level data flow language but also has operators similar to SQL (e.g., FILTER and JOIN) that are translated into a series of map and reduce functions. Pig Latin, in essence, is designed to fill the gap between the declarative style of SQL and the low-level procedural style of MapReduce.


****************************************************************************************************************************************
Hive
****************************************************************************************************************************************
Hive is a SQL-based data warehouse system for Hadoop that facilitates data summarization, ad hoc queries, and the analysis of large datasets stored in Hadoop-compatible file systems (e.g., HDFS, MapR-FS, and S3) and some NoSQL databases. Hive is not a relational database, but a query engine that supports the parts of SQL specific to querying data, with some additional support for writing new tables or files, but not updating individual records. 

That is, Hive jobs are optimized for scalability, i.e., computing over all rows, but not latency, i.e., when you just want a few rows returned and you want the results returned quickly. Hive’s SQL dialect is called HiveQL. Table schema can be defined that reflect the data in the underlying files or data stores and SQL queries can be written against that data. Queries are translated to MapReduce jobs to exploit the scalability of MapReduce. 

Hive also support custom extensions written in Java, including user-defined functions (UDFs) and serializer-deserializers for reading and optionally writing custom formats, e.g., JSON and XML dialects. Hence, analysts have tremendous flexibility in working with data from many sources and in many different formats, with minimal need for complex ETL processes to transform data into more restrictive formats. Contrast with Shark and Impala.

****************************************************************************************************************************************
Amazon Web Services Elastic MapReduce
****************************************************************************************************************************************
Amazon Web Services (AWS) Elastic MapReduce (EMR) is Amazon’s packaged Hadoop offering. Rather than building Hadoop deployments manually on EC2 (Elastic Compute Cloud) clusters, users can spin up fully configured Hadoop installations using simple invocation commands, either through the AWS Web Console or through command-line tools. Several of the popular Hadoop tools are available as options, including Hive, Pig, and HBase.




*****************************************************************************************************************
				You can visit my LinkedIn profile @ www.linkedin.com/in/sureshyadagottijayaram			                    				
*****************************************************************************************************************
