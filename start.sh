#!/bin/bash
docker compose -f ./_devops/nexus/docker-compose.yaml up -d
docker compose -f ./_devops/jenkins/docker-compose.yaml up -d
minikube start

#helm repo add prometheus-community https://prometheus-community.github.io/helm-charts 
#helm install monitoring prometheus-community/kube-prometheus-stack -n monitoring --create-namespace
#helm install blackbox-exporter prometheus-community/prometheus-blackbox-exporter -n monitoring
#helm upgrade monitoring prometheus-community/kube-prometheus-stack -n monitoring -f values.yaml