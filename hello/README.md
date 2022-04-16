# Docker create , ECR login and push commands


1. docker build -f Dockerfile -t hello:v1 . 

2. aws ecr get-login --region us-east-1 

3. aws ecr --region us-east-1 | docker login -u AWS -p eyJwYXlsb2FkIjoiWTFzTzJ1a3U4SHUwbm5OSUE3T2lUTHk2VFFRRmVIY09iZEFGdm9jaWdLMGhOaVRjNnp4NmNSZUdKTXdhNEl0clRwUVRXeDEwbnkrWnlrU050dVBvYWZYNXQybnFVc3cvVGlCbUk0czJIMTJ2djR1TThtL1gvMEcvY0MvVEdIbzFadktrbm43K1RsNEdtNG9GOHNyK1Bmampjczczb0VTOWdGMFVZQ3NKZllTUHpVd3BzcFlmVFJBSUtKbXJDc09OVE4xT01RbzBjVHo5V3FybGM5SldDZko1Z0pQY0hKT0NXUlp4VzhNTmh4K01mNkNmMDVLYlNLNk92YytnczUzZ1FsaHFHWTdkMEN4b01ad0lrUU9peEQ3cTVGai9jaXBOSForTDU5RzBnNDFDUkpLTUpmcmNybndkSEtraXM4amtJTXJEd3hXaTJhTGIvYklZOGFtT2RIWTlWeGpKLy9pTnpxL21NbG0vM3ZLd3Vza1V1a2YydDVJSW9jSjAzZHlXRmtONjFvRWg1U0trSnVRbEVIU0VrdXhPNTZ2TXNKTDFIdlNnK05XVXBrZGV1VnNMazZSSWNkSzRnQjN4dmo3UlFqZHdwam84ZVpwTDQvV3Z4Y0RRQ1BuaVlBSnVwWm9OOWdmVjF2eFNmTnVySUQrQ0UySklWSnBGSFoxUFRqUWp1eDJPcE9DOGV6UmhxaHBGcnZIb1VyY0VBLzdkQ3dTeTFOMC9IZWxRL1dZeEdLVE02M0FwdlVzRlYzRWZMa1p0Y2lIRE15UGE4b0pwbE15dVY4N2FOSmdaRDVVYTZpK1V4OS9pWGlPMWdpVlVUdTkzeGM5Mm1aR1pxYVU0alNrbStBVEVhaGN4Sko0a2k3Z2w3YjBDeHpKZGlqbklna0RZTkdvMmlTOUFWaWZYY0J2MkM5TDN6M29nZjJFN09qbWYxRWd1c1NTNUpqYWdBb0JnRGM4Vkh2d0p5MGUvaldHZno1TitWYXczRTA5OTZXMlRyTDlTY28vS2ZGNmwyamh3QUMxWTBGcUhvcjlMMkdmcUpYZzdYcytVdFJrZ3RmQmNuc3FJRTZTUXZIOTA1VWd0UzhQQ2xlNkhTYzIxLzhSRzlwdnA0ZDNvNlpkcit2Y2p1M3RNdDA3dFVIcnRJcGVxN2hWVmRlY24xWWF2MS9xM1BvalZ4OUE5YktCRzZoVVhzNENUVkRrUE5ud090dEYyZ2JsZUdmbmdQSEV1Y3cvYTF3NGorN1BLNnNxVElVa3JnM2FGa0V0N21weFZ0c0h1aXBNUU5iWlpOWkdFeVlUWGdJZWpkTVArRXF3T29HQmdHbGNqU3hJUGcxOGI2R0daaHRvVTMzUDVmTGZaenA4REkwUW1xSGQ4dG9VcUFCNm14ZTROMk55ZlF4YmdkcjViMkE9PSIsImRhdGFrZXkiOiJBUUVCQUhod20wWWFJU0plUnRKbTVuMUc2dXFlZWtYdW9YWFBlNVVGY2U5UnE4LzE0d0FBQUg0d2ZBWUpLb1pJaHZjTkFRY0dvRzh3YlFJQkFEQm9CZ2txaGtpRzl3MEJCd0V3SGdZSllJWklBV1VEQkFFdU1CRUVESnhXN0xTNzVjY25aUmF1R3dJQkVJQTdsRnc1ZmEvdkUycFlsQXoxMXkyOFo3aUE4T3kveEZDQVpvYUVvN09JdDRaTm80VjQxRHgzU09JcDgwai9ZeHo5YjFzRk5mM3RzSGRLVnJzPSIsInZlcnNpb24iOiIyIiwidHlwZSI6IkRBVEFfS0VZIiwiZXhwaXJhdGlvbiI6MTY0OTk1MjU5Mn0= 912524568502.dkr.ecr.us-east-1.amazonaws.com


4. docker tag hello:v1 912524568502.dkr.ecr.us-east-1.amazonaws.com/hello:v1

5. docker push 912524568502.dkr.ecr.us-east-1.amazonaws.com/hello:v1 





#==========================================================================================================#

# Setting up AWS EKS (Hosted Kubernetes)


## Download kubectl
```
curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
chmod +x kubectl
sudo mv kubectl /usr/local/bin
```

## Download the aws-iam-authenticator
```
wget https://github.com/kubernetes-sigs/aws-iam-authenticator/releases/download/v0.3.0/heptio-authenticator-aws_0.3.0_linux_amd64
chmod +x heptio-authenticator-aws_0.3.0_linux_amd64
sudo mv heptio-authenticator-aws_0.3.0_linux_amd64 /usr/local/bin/heptio-authenticator-aws
```

## Modify providers.tf

Choose your region. EKS is not available in every region, use the Region Table to check whether your region is supported: https://aws.amazon.com/about-aws/global-infrastructure/regional-product-services/

Make changes in providers.tf accordingly (region, optionally profile)

## Terraform apply
```
cd eks-demo
terraform init
terraform apply
```

## Configure kubectl
```
terraform output kubeconfig # save output in ~/.kube/config
aws eks --region <region> update-kubeconfig --name terraform-eks-demo
```

## Configure config-map-auth-aws
```
terraform output config-map-aws-auth # save output in config-map-aws-auth.yaml
kubectl apply -f config-map-aws-auth.yaml
```

## See nodes coming up
```
kubectl get nodes
```

## Destroy
Make sure all the resources created by Kubernetes are removed (LoadBalancers, Security groups), and issue:
```
terraform destroy
```
#===========================================================================================================#



# For Single Pod


kubectl create ns
kubectl run hello --image=912524568502.dkr.ecr.us-east-1.amazonaws.com/hello:v1 --restart=Never -n staging






#============================================================================================================#
# Multi-node

```
1. kubectl daemon-set-p2.yaml
      apiVersion: apps/v1
      kind: DaemonSet
      metadata:
        name: p2
        namespace: staging
        labels:
          k8s-app: fluentd
      spec:
        selector:
          matchLabels:
            name: fluentd
        template:
          metadata:
            labels:
              name: fluentd
          spec:
            containers:
            - name: fluentd
              image: fluentd:latest
2. kubectl get pods -n staging

3. kubectl get nodes

4. kubectl get pods --output=wide -n staging 
     p2-b9cgs   1/1     Running   0          2m49s   10.0.102.176   ip-10-0-102-107.ec2.internal   <none>           <none>
     p2-v9lxm   1/1     Running   0          2m49s   10.0.101.64    ip-10-0-101-180.ec2.internal   <none>           <none>
```


#=============================================================================================================#
# For Multi-container Pod

```
apiVersion: v1
kind: Pod
metadata:
  name: p3
spec:
  volumes:
  - name: html
    emptyDir: {}
  containers:
  - name: 1st
    image: nginx
    volumeMounts:
    - name: html
      mountPath: /usr/share/nginx/html
  - name: 2nd
    image: debian
    volumeMounts:
    - name: html
      mountPath: /html
    command: ["/bin/sh", "-c"]
    args:
      - while true; do
          date >> /app/ready.txt;
          sleep 1;
        done
```



In this example, we define a volume named html. Its type is emptyDir, which means that the volume is first created when a Pod is assigned to a node, and exists as long as that Pod is running on that node. As the name says, it is initially empty. The 1st container runs nginx server and has the shared volume mounted to the directory /usr/share/nginx/html. The 2nd container uses the Debian image and has the shared volume mounted to the directory /html. Every second, the 2nd container adds the current date and time into the /app/ready.txt file, which is located in the shared volume. When the user makes an HTTP request to the Pod, the Nginx server reads this file and transfers it back to the user in response to the request.



#====================================================================================================================#

# Monitoring

# install the NGINX ingress controller:

1. helm upgrade --install ingress-nginx ingress-nginx \
  --repo https://kubernetes.github.io/ingress-nginx \
  --namespace ingress-nginx --create-namespace

2. testing: 
     2.1.  You can see that IP address or FQDN with the following command:
     
     kubectl get service ingress-nginx-controller --namespace=ingress-nginx

     2.2 Once you have the external IP address (or FQDN), set up a DNS record pointing to it. Then you can create an ingress resource. The following  example assumes that you have set up a DNS record for www.example.io
     
     kubectl create ingress demo --class=nginx \
       --rule="www.example.io/*=example:80"


3. installing prometheus/grafana
```
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo update
helm install prometheus prometheus-community/kube-prometheus-stack -n kube-system
```
4. Re-configure NGINX Ingress controller
The Ingress NGINX controller needs to be reconfigured for exporting metrics. This requires 3 additional configurations to the controller. These configurations are :
```
helm upgrade  --install ingress-nginx ingress-nginx \                
--repo https://kubernetes.github.io/ingress-nginx \
--namespace ingress-nginx \
--set controller.metrics.enabled=true \
--set controller.metrics.serviceMonitor.enabled=true \
--set controller.metrics.serviceMonitor.additionalLabels.release="prometheus"
```
5. Configure Prometheus

Since Prometheus is running in a different namespace and not in the ingress-nginx namespace, it would not be able to discover ServiceMonitors in other namespaces when installed. Reconfigure your kube-prometheus-stack Helm installation to set serviceMonitorSelectorNilUsesHelmValues flag to false. By default, Prometheus only discovers PodMonitors within its own namespace. This should be disabled by setting podMonitorSelectorNilUsesHelmValues to false

```
helm upgrade prometheus prometheus-community/kube-prometheus-stack \
--namespace kube-system  \
--set prometheus.prometheusSpec.podMonitorSelectorNilUsesHelmValues=false \
--set prometheus.prometheusSpec.serviceMonitorSelectorNilUsesHelmValues=false
```

6. Connect and view Prometheus dashboard
```
kubectl port-forward svc/prometheus-kube-prometheus-prometheus -n kube-syetem 9090:9090
```

7.Connect and view Grafana dashboard¶

Port forward to Grafana service. Find out the name of the Grafana service by using the following command:
```
kubectl get svc -n prometheus
```
```
kubectl port-forward svc/prometheus-grafana  3000:80 -n prometheus
```
