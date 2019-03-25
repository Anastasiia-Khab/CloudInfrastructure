# exit when any command fails
set -e

kubectl create -f kube_deployment.yaml 
#kubectl create -f kube_liveness.yaml
#kubectl create -f kube_readiness.yaml
kubectl create -f kube_service.yaml 
kubectl create -f kube_autoscaling.yaml
echo "Done! Please visit : "
minikube service ana-node-service --url



# keep track of the last executed command
trap 'last_command=$current_command; current_command=$BASH_COMMAND' DEBUG
# echo an error message before exiting
trap 'echo "\"${last_command}\" command filed with exit code $?."' EXIT



