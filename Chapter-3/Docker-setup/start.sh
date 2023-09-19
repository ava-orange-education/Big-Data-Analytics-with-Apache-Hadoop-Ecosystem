#!/bin/bash
docker run  --rm -t --name analytics-with-hadoop --hostname localhost  -P -p9866:9866 -p10000:10000 -p10001:10001 -p10002:10002 -p8088:8088 -p9000:9000 -p9870:9870 -p8000:8000 -p3306:3306 -p50070:50070 -p50030:50030 -it -d analytics-with-hadoop  /bin/bash -c "/bootstrap.sh >/tmp/boostrap.log"