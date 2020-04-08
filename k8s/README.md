### Create config and persistent volume

```
kubectl apply -f service-space-volume.yaml --namespace development
kubectl create configmap service-space-config --from-file=files/nuts.yaml --namespace development
```

### Install

```
kubectl apply -f service-space-deployment.yaml --namespace development
```
