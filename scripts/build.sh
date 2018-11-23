#!/usr/bin/env bash
cd azure/vm_setup
chmod +x ../../binaries/terraform_linux
../../binaries/terraform_linux init 
../../binaries/terraform_linux validate
../../binaries/terraform_linux apply -auto-approve 