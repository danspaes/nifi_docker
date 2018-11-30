#/bin/bash

sudo docker-compose up --scale nifi-nodes=$1 -d

hostip=$(sudo docker exec nifi-coordinator hostname -i)
echo "Your nifi UI is available at: http://$hostip:8080/nifi"
