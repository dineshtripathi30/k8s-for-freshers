# Kubernetes Learning for College Students

By: Dinesh Tripathi  (This project is still under development)

## Getting Started with persistent  volume
* This is an example of how to create persistent volume using yaml file. 
* At the moment, creating persistent  volume using imperative command is not supported.
  
### What is persistent volume  in kubernetes?
<todo>

### Lab Prerequisites

*  Minikube cluster is up and running
  
### Lab Steps
* This command will create a hostpath based persistent volume using yaml file. Modify the parameters according it according to your requirement
 
* Create persistent volume
  ```sh
  kubectl create -f hostpath-pv.yml
  ```
* persistent volume output
  ```sh
  kubectl  get  pv
  NAME      CAPACITY   ACCESS MODES   RECLAIM POLICY   STATUS      CLAIM   STORAGECLASS   REASON   AGE
  demo-pv   1Gi        RWO            Retain           Available                        
  ```