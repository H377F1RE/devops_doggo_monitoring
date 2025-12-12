#!/bin/bash
docker compose -f ./_devops/nexus/docker-compose.yaml up -d
docker compose -f ./_devops/jenkins/docker-compose.yaml up -d
minikube start