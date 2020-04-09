### Create a nuts service

Go to the folder and apply the kubernetes kustomize configuration by executing the following command:

```
kubectl apply -l . -n development
```

### Reserve IP adresses:

For the Demo EHR
```
gcloud compute addresses create nuts-demo-ehr-ip-development --project=nuts-network --global
```

For the nuts-node
```
gcloud compute addresses create nuts-node-ip-development --project=nuts-network --global
```
