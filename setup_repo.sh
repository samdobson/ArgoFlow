#!/bin/bash
yq e -i ".spec.source.repoURL = \"$1\"" kubeflow.yaml
for filename in ./argocd-applications/*.yaml; do
    yq e -i ".spec.source.repoURL = \"$1\"" $filename
done
