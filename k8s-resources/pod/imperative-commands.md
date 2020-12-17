# Set some alias
alias k=kubectl
alias kfg="kubectl --force --grace-period=0"


* minikube
  ```sh
  Linux Machine
  ```

k run nginx --image nginx --restart Never --requests "cpu=.2,memory=50Mi" --limits "cpu=.4,memory=100Mi" --dry-run=client -o yaml --env=a=b --labels=b=c -- /bin/sh -c "sleep 3600"