# Openfaas Kubernetes Windows Test Function

Openfaas Kubernetes Windows Test Function

Tested using 
 - Docker version 19.03.2
 - Kubernetes 1.15.4

Cluster
 - Ubuntu 18.04 Master
 - Ubuntu 18.04 Worker
 - Windows 2019 Datacenter Worker

You'll need to update the files to point to your repository and gateway information.

Build then push Dockerfile to local repository.
Deploy to Openfaas via
````
  faas-cli deploy -f ipconfig_function.yaml
````
  

Function failes in Openfaas due to Liveness Probe failers 
````
Describe pod:
Events:
  Type     Reason     Age                    From                      Message
  ----     ------     ----                   ----                      -------
  Warning  Unhealthy  60m (x315 over 5h46m)  kubelet, ricms-kbtst-dev  Liveness probe failed: Get http://ip:port/_/health: net/http: request canceled while waiting for connection (Client.Timeout exceeded while awaiting headers)
  Normal   Started    5m19s (x472 over 21h)  kubelet, ricms-kbtst-dev  Started container ipconfig
  Warning  BackOff    8s (x5568 over 21h)    kubelet, ricms-kbtst-dev  Back-off restarting failed container
````
