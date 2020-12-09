# Kubernetes Learning for College Students

By: Dinesh Tripathi  (This project is still under development)

## Getting Started with Persistent Volume claim
### What is persistent volume claim in kubernetes?
<todo>

### Lab Prerequisites

This is an example of how to create persitent volume claim using yaml file.
#### Note: Persitent volume claim creation is not supported using imperative command yet.
 
*  Minikube cluster is up and running
  
### Lab Steps
* Create persistent volume claim
  ```sh
  kubectl create -f persistentvolumeclaim.yml 
  persistentvolumeclaim/volume-claim created  
  ```
* deployment output
  ```sh
  kubectl get pvc
  NAME           STATUS   VOLUME                                     CAPACITY   ACCESS MODES   STORAGECLASS   AGE
  volume-claim   Bound    pvc-61697dd7-646f-4c92-bf01-8c18a0f1c4ce   1Gi        RWO            standard       4s
  ```