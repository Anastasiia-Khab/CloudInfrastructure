# exit when any command fails
set -e

#delete all already deployed to kubectl
kubectl delete $(kubectl get all  | grep ana-node | awk '{print $1}')

#register local Docker environment
eval $(minikube docker-env)

#build Docker image
sudo docker build --tag anastasiia_cloud_five .

#deployement
kubectl create -f kube_deployment_five.yaml 
kubectl create -f kube_service.yaml 
kubectl create -f kube_autoscaling.yaml
#giving url to use
echo "Done! Please visit : "
minikube service ana-node-service --url

# keep track of the last executed command
trap 'last_command=$current_command; current_command=$BASH_COMMAND' DEBUG
# echo an error message before exiting
trap 'echo "\"${last_command}\" command filed with exit code $?."' EXIT



