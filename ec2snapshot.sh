#!/bin/bash

ssh -o StrictHostKeyChecking=no -i /data/MyKeyPair.pem ec2-user@ec2-18-142-46-117.ap-southeast-1.compute.amazonaws.com "source ~/.bash_profile; pcluster update-compute-fleet --status STOP_REQUESTED --region ap-southeast-1 --cluster-name MyCluster01; ~/update_snapshot.sh data 2 MyCluster01"
