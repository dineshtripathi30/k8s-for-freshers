# Kubernetes Learning for College Students

By: Dinesh Tripathi  (This project is still under development)

## Getting Started with deployment
### What is deployment  in kubernetes?
<todo>

### Lab Prerequisites

This is an example of how to create deployment using imperative command.
*  Minikube cluster is up and running
  
### Lab Steps
* This command will generate a sample deployment file, Modify it according to your  deployment requirement
  ```sh
  kubectl create deploy my-deploy --image nginx --replicas 1 --namespace demospace --dry-run=client -o yaml > my-deploy.yml
  ```
* Create deployment
  ```sh
  kubectl create -f my-deploy.yml
  ```
* deployment output
  ```sh
  kubectl get  deploy -n demospace
  NAME        READY   UP-TO-DATE   AVAILABLE   AGE
  my-deploy   1/1     1            1           22h
  ```