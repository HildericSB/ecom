```
❯ kubectl get hpa
NAME        REFERENCE              TARGETS              MINPODS   MAXPODS   REPLICAS   AGE
ecommerce   Deployment/ecommerce   cpu: <unknown>/50%   6         10        2          88s
```
Cpu targets will stay at <unknown> because I'm using docker desktop and this use the metrics server.
A solution would be to test it using minikube or a cloud proviser will full k8 install.

# Implement Liveness and Readiness Probes
```
  Normal   Killing    6s                     kubelet            Container ecommerce failed liveness probe, will be restarted
  Normal   Pulling    5s (x4 over 13m)       kubelet            Pulling image "hilderoc/ecomweb2:latest"
```  
I used a `chmod 000 /var/www/html` to make break the apache without killing the process, so the request will fail and the 
apache process will live, this a a good way to test the liveness probes

