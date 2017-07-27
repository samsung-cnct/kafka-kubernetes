# kafka
set of files to deploy kafka as a statefulset

## Bootstrap
Create the statefulset in this directory
```
kubectl create -f kafka.yaml
```

## Dependencies
Kafka requires a zookeeper installation.  This must be reachable from inside the cluster.  The recommendation is to run a [zookeeper statefulset](https://github.com/kubernetes/contrib/tree/master/pets/zookeeper).  The location can be specified in kafka.yaml

## Resources
nodes (each):
 - 4GB  (first knob to turn up for performance reasons.  Do not exceed 31GB, the jvm breaks down)
 - 1/2 CPU (500m)
 - 20GB of disk (this should be increased greatly for production use)

## Scaling
You can scale up by modifiying the numebr of replicas on the statefulset

## production tuning
please see the official kafka documentation for available parameters: https://kafka.apache.org/documentation#brokerconfigs These can all be set via environment variable.  Please see kafka.yaml for an example.