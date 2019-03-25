cd metrics-server
kubectl create -f deploy/1.8+/
cd ..
minikube addons enable metrics-server
kubectl create -f kube_deployment.yaml 
kubectl create -f kube_service.yaml 
kubectl create -f kube_autoscaling.yaml

