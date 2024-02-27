you can go here - https://killercoda.com/playgrounds/scenario/kubernetes  

controlplane $ git clone https://github.com/davemsolomon/k8s_security.git
controlplane $ cd k8s_security/

controlplane $ bash -x ./run.sh 
kubectl apply -f ./sundaynight.yml  
namespace/sundaynightns unchanged  
serviceaccount/sundaynightsa unchanged  
clusterrole.rbac.authorization.k8s.io/sundaynight-role unchanged  
rolebinding.rbac.authorization.k8s.io/sundaynight-rolebinding configured  
kubectl auth can-i get namespaces --as=system:serviceaccount:sundaynightns:sundaynightsa -n sundaynightns  
Warning: resource 'namespaces' is not namespace scoped  
no  
kubectl get namespaces --as=system:serviceaccount:sundaynightns:sundaynightsa -n sundaynightns  
Error from server (Forbidden): namespaces is forbidden: User "system:serviceaccount:sundaynightns:sundaynightsa" cannot list resource "namespaces" in API group "" at the cluster scope
