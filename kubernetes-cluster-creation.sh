eksctl create cluster \
--name udacity-capstone-cluster \
--version 1.15 \
--nodegroup-name standard-workers \
--node-type t2.small \
--nodes 2 \
--nodes-min 1 \
--nodes-max 3 \
--node-ami auto \
--region us-west-2 \