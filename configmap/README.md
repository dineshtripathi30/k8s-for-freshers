# Kubernetes Learning for College Students

By: Dinesh Tripathi  (This project is still under development)

## Getting Started with job
### What is job  in kubernetes?
<todo>

### Lab Prerequisites

This is an example of how to create job using imperative command.
*  Minikube cluster is up and running
  
### Lab Steps
* This command will generate a sample job file, Modify it according to your requirement
  ```sh
  kubectl create job demo-job --image busybox --namespace demospace --dry-run=client -o yaml > my-job.yml
  ```
* Create deployment
  ```sh
  kubectl create -f my-job.yml
  ```
* deployment output
  ```sh
  kubectl get jobs -n demospace
  NAME                 COMPLETIONS   DURATION   AGE
  demo-job             0/1           6s         6s
  ```