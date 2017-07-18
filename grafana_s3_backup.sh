#!/bin/bash
sh backup_grafana.sh
aws s3 cp /tmp/dashboards.tar.gz s3://$S3_BUCKET_NAME
aws s3 cp /tmp/datasources.tar.gz s3://$S3_BUCKET_NAME
