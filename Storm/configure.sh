#!/bin/sh

cat >> /usr/local/storm/apache-storm-0.9.3/conf/storm.yaml <<EOF
storm.local.dir: "/tmp"
EOF

if [ -n "$1" ]; then
   cat >> /usr/local/storm/apache-storm-0.9.3/conf/storm.yaml <<EOF
storm.zookeeper.servers: 
- "$1"
EOF
fi

if [ -n "$2" ]; then
   cat >> /usr/local/storm/apache-storm-0.9.3/conf/storm.yaml <<EOF
nimbus.host: "$2"
EOF
fi   
cat >> /usr/local/storm/apache-storm-0.9.3/conf/storm.yaml <<EOF
storm.zookeeper.port: 2181
EOF
#cat >> /usr/local/storm/apache-storm-0.9.3/conf/storm.yaml <<EOF
#java.library.path: "/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.131-3.b12.el7_3.x86_64/jre/"
#EOF

cat /usr/local/storm/apache-storm-0.9.3/conf/storm.yaml
