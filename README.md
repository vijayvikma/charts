**Add a Helm chart repository**

helm repo add vijayvikma https://vijayvikma.github.io/charts/

helm repo update

helm repo list

**Check available charts in the repository**

helm search repo vijayvikma


**Install AiOps chat bot chart in the cluster**

helm install aiops vijayvikma/aiops --namespace aiops --create-namespace

Follow the instruction on helm chart installation.


1. Get the application URL by running these commands:
  SERVICE_PORT=$(kubectl get svc aiops-service -n aiops -o jsonpath='{.spec.ports[*].port}')

2. Update the secret
kubectl patch secret aiops-secret \
  --namespace aiops \
  --type='merge' \
  -p="{\"data\":{\"CUSTOM_AI_SERVER_KEY\":\"$(echo -n 'ADD your key' | base64)\"}}"

3. Refresh the Pods
kubectl rollout restart deployment aiops-deployment --namespace aiops

4. Port forward:
  kubectl port-forward service/aiops-service $SERVICE_PORT:5200 -n aiops




<img width="1510" alt="image" src="https://github.com/user-attachments/assets/48067197-571a-4f36-8dd5-cde6eb4d3ebb" />






**Install todo chart in the cluster**

helm install todo-release vijayvikma/todo 



kubectl get all 

kubectl port-forward svc/frontend-service 8000:80 

http://localhost:8000

<img width="1007" alt="image" src="https://github.com/user-attachments/assets/c1ce02f1-edd6-474e-8f56-f79373e5596e">


