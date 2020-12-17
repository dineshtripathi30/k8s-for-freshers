# Here, you will learn the imperative commands for creating pods with different parameters

## Set some alias for fast execution of commands e.g.
* alias k=kubectl
* alias kfg="kubectl --force --grace-period=0"

# Imperative Commands
* Create pod 'demopod' with 'ngnix' image
  ```sh
  k run demopod --image nginx
  ```

```sh
k run nginx --image nginx --restart Never --requests "cpu=.2,memory=50Mi" --limits "cpu=.4,memory=100Mi" --dry-run=client -o yaml --env=a=b --labels=b=c -- /bin/sh -c "sleep 3600"
```