#!/bin/bash

pg_ami_id=$(curl https://keyvalue.immanuel.co/api/KeyVal/GetValue/xqzlp7yq/pg-ami-id)
echo "PG AMI Id $pg_ami_id"
aws cloudformation deploy \
--stack-name Wallet-Postgres-Server \
--template-file .circleci/cloudformation/postgres_w_monitoring.yml \
--parameter-overrides StackID=test-stack,EnvironmentName=Wallet,PGImageID=$pg_ami_id