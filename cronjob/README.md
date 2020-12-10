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

*  Meaning of Schedule
   Specifying when the CronJob runs

    The spec.schedule field defines when, and how often, the CronJob runs, using Unix standard crontab format. All CronJob times are in UTC. There are 5 fields, separated by spaces. These fields represent the following:

    Minutes (between 0 and 59)
    Hours (between 0 and 23)
    Day of the month (between 1 and 31)
    Month (between 1 and 12)
    Day of the week (between 0 and 6)
    You can use the following special characters in any of the spec.schedule fields:

    ? is a wildcard value that matches a single character.
    "*" is a wildcard value that matches zero or more characters.
    /, allows you to specify an interval for a field. For instance, if the first field (the minutes field) has a value of */5, it means "every 5 minutes". If the fifth field (the day-of-week field) is set to 0/5, it means "every fifth Sunday".