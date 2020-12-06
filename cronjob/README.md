# Kubernetes Learning for College Students

By: Dinesh Tripathi  (This project is still under development)

## Getting Started with cronjob
### What is cronjob?
<todo>

### Lab Prerequisites

This is an example of how to create cronjob using imperative command.
*  Minikube cluster is up and running
  
### Lab Steps
* This command will generate a sample cronjob file, Modify it according to your  cronjob requirement
  ```sh
  kubectl create cj counter --image busybox --schedule "*/1 * * * *" --dry-run=client  -o  yaml > cronjob.yml
  ```
  * Create cronjob
  ```sh
  kubectl create -f cronjob.yml
  ```
  * cronjob output
  ```sh
  kubectl get  cj
  NAME      SCHEDULE      SUSPEND   ACTIVE   LAST SCHEDULE   AGE
  counter   */1 * * * *   False     0        <none>          5s
  ```