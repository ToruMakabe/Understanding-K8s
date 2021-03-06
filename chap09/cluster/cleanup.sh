#!/bin/bash

CHAP="ch09"

# Destroy AKS Clster
terraform init \
    -backend-config="storage_account_name=${TF_VAR_k8sbook_prefix}${CHAP}tfstate" \
    -backend-config="container_name=tfstate-cluster" \
    -backend-config="key=terraform.tfstate" \
    -reconfigure

terraform destroy -auto-approve