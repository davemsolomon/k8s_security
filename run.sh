#!/bin/sh
kubectl apply -f ./sundaynight.yml
#kubectl apply -f ./sundaynight2.yml

#kubectl get storageclasses --as=system:serviceaccount:sundaynightns:sundaynightsa -n sundaynightns
#kubectl get storageclasses --as=system:serviceaccount:sundaynightns:sundaynightsa2 -n sundaynightns
kubectl auth can-i get namespaces --as=system:serviceaccount:sundaynightns:sundaynightsa -n sundaynightns
kubectl get namespaces --as=system:serviceaccount:sundaynightns:sundaynightsa -n sundaynightns
#kubectl get namespaces --as=system:serviceaccount:sundaynightns:sundaynightsa2 -n sundaynightns
