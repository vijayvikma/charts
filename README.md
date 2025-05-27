**Add a Helm chart repository**

helm repo add vijayvikma https://vijayvikma.github.io/charts/

helm repo update

helm repo list

**Check available charts in the repository**

helm search repo vijayvikma


**Install AiOps chat bot chart in the cluster**

helm install aiops vijayvikma/aiops --namespace aiops --create-namespace

Follow the instruction on helm chart installation.

<img width="1510" alt="image" src="https://github.com/user-attachments/assets/48067197-571a-4f36-8dd5-cde6eb4d3ebb" />






**Install todo chart in the cluster**

helm install todo-release vijayvikma/todo 



kubectl get all 

kubectl port-forward svc/frontend-service 8000:80 

http://localhost:8000

<img width="1007" alt="image" src="https://github.com/user-attachments/assets/c1ce02f1-edd6-474e-8f56-f79373e5596e">


