# Hive project
This project is an exemple of Haoop/Hive implementation and illustrate performance increase when using partioning in Hive.

## Prerequisites
A working Hadoop and Hive environment.

## Usage
First execute `get_data.sh` to retrieve files in a `data` folder. Hadoop has to have access to this folder.
Then execute `data_hdfs.sh` inside the Hadoop instance to put the files in HDFS. Finally use the `create_hive_db.hql` with Hive to create tables and partitions.
The file `requests.sql` shows some example queries with process time that can be executed in Hive.