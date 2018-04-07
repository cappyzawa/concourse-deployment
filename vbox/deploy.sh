#!/usr/bin/env bash

bosh -e vbox deploy -d concourse ../concourse-bosh-deployment/cluster/concourse.yml \
--vars-store ./creds.yml \
--vars-file ../concourse-bosh-deployment/versions.yml \
--vars-file ./passwords.yml \
-o ../concourse-bosh-deployment/cluster/operations/basic-auth.yml \
-o ../concourse-bosh-deployment/cluster/operations/static-web.yml \
-o ../operations/default-check-interval.yml \
-v deployment_name="concourse" \
-v network_name="default" \
-v web_vm_type="default" \
-v worker_vm_type="default" \
-v db_vm_type="default" \
-v db_persistent_disk_type="default" \
-v external_url="http://10.244.0.34:8080" \
-v web_ip="10.244.0.34" \
-v default_check_interval="12h" \
--no-redact
