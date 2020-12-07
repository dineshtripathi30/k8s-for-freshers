# Kubernetes Learning for College Students

By: Dinesh Tripathi  (This project is still under development)

## Getting Started with Helm
### What is Helm?
* Helm is a package manager for Kubernetes. Generally, when we need to deploy differnet resource in Kubernetes, we create separate yaml  file and  deploy them using kubectl command. Helm helps us  to do package all that together which is called as Helm Chart and deploy using helm command.

### Helm Installation  

Helm got various versions and prior to helm 3.0, there was different architecutre and that is now changed. I will explain you  the installation of helm on Linux machine using simple commands.
  
### Lab Pre-requirement
* Linux Operating system is available
  ```sh
  curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3
  chmod 700 get_helm.sh
  ./get_helm.sh
  ```
* You will have helm ready now. Run the below command to validate it.
  ```sh
  helm version
  version.BuildInfo{Version:"v3.4.1", GitCommit:"c4e74854886b2efe3321e185578e6db9be0a6e29", GitTreeState:"clean", GoVersion:"go1.14.11"}
  ```