--this one creates a user sundaynightsa with a clusterrole with a regular binding   
kubectl apply -f sundaynight.yml  
  

--this one creates a user sundaynightsa2 with a clusterrole with a cluster binding  
kubectl apply -f sundaynight2.yml  
  
kubectl get storageclasses --as=system:serviceaccount:sundaynightns:sundaynightsa -n sundaynightns  
kubectl get storageclasses --as=system:serviceaccount:sundaynightns:sundaynightsa2 -n sundaynightns

kubectl get namespaces --as=system:serviceaccount:sundaynightns:sundaynightsa -n sundaynightns  
Error from server (Forbidden): namespaces is forbidden: User "system:serviceaccount:sundaynightns:sundaynightsa" cannot list resource "namespaces" in API group "" at the cluster scope  

kubectl get namespaces --as=system:serviceaccount:sundaynightns:sundaynightsa2 -n sundaynightns  
NAME               STATUS   AGE  
default            Active   44h  
devops-tools       Active   92m  
fln-rnd            Active   43h  
