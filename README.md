# kafka
set of files to deploy kafka as a petset

## Bootstrap
Create the petset in this directory
```
kubectl create -f kafka.yaml
```

## Dependencies
Kafka requires a zookeeper installation.  This must be reachable from inside the cluster.  The recommendation is to run a [zookeeper petset](https://github.com/kubernetes/contrib/tree/master/pets/zookeeper).  The location can be specified in kafka.yaml

## Failover
TODO:  add details

## Scaling
You can scale up by modifiying the numebr of replicas on the PetSet