# Deploying Kubeflow with ArgoCD

This repository contains Kustomize manifests that point to the upstream
manifest of each Kubeflow component and provides an easy way for people
to change their deployment according to their need. ArgoCD application
manifests for each componenet will be used to deploy Kubeflow. The intended
usage is for people to fork this repository, make their desired kustomizations,
run a script to change the ArgoCD application specs to point to their fork
of this repository, and finally apply a master ArgoCD application that will
deploy all other applications.

This is a work in progress at this point.
To run the below script [yq](https://github.com/mikefarah/yq) version 4
must be installed

Initial instructions:

- fork this repo
- modify the kustomizations for your purpose
- run `./setup_repo.sh <your_repo_url>`
- commit and push your changes
- run `kubectl apply -f kubeflow.yaml`
