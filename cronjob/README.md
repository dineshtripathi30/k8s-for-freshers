# Kubernetes Learning for College Students

By: Dinesh Tripathi  (This project is still under development)

## Getting Started with cronjob


### Prerequisites

This is an example of how to create cronjob using imperative command.
* This command will generate a sample cronjob file, Modify it according to your  cronjob requirement
  ```sh
  kubectl create cj counter --image busybox --schedule "*/1 * * * *" --dry-run=client  -o  yaml > cronjob.yml
  ```