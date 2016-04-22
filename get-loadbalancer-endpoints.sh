#!/bin/bash
kubectl get svc | grep -v '<none>' | sed '1 s/^.*$//; /^$/d' | awk '{print $1}' | xargs kubectl describe svc | grep '^Name:\|^LoadBalancer Ingress:'