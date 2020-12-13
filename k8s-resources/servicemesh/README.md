# Kubernetes Learning for College Students

By: Dinesh Tripathi  (This project is still under development)

## Getting Started with Service Mesh
### What is Service Mesh in Kubernetes?
<todo>

### Lab Prerequisites

This is an example of how to create deploy several kubernetes resources after istio service mesh is enabled.
*  Minikube cluster is up and running

### Lab Introduction
* In this lab, we will deploy the simple nginx image and try accesasing through istio ingress load balancer.
* Before we start the kubernetes  resource deployment, lets understand what we are going  to do:
  * Kubernetes cluster is up and running
  * Istio is deployed, validate the istio resources in istio-system namespace and ensure all the  pods are running.


### Lab Steps

* Create nginx pod by using below imperative  command
  ```sh
  kubectl run nginx --image nginx --restart Never
  ```
* View the pod
  ```sh
   k get pod
    NAME                     READY   STATUS    RESTARTS   AGE
    nginx                    2/2     Running   0          4h25m
  ```
* In above output, you will notice that, there are two containers. One is for nginx and another is injected by istio autommatically  which is envoy proxy.
* See the resource yaml files and test them out, Here is the order you need to follow to create them
  * Deploy pod.yml
  * Deploy  service.yml
  * Deploy gateway.yml
  * Deploy virtualservice.yml