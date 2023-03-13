#!/bin/bash

DATE=$(date +%H-%M-%S)
BACKUP=db-$DATE.sql
DB_HOST=$1
DB_PASSWORD=$2
DB_NAME=$3
AWS_SECRET=$4
BUCKET_NAME=$5

mysqldump -u root -h $DB_HOST -p$DB_PASSWORD $DB_NAME > /tmp/$BACKUP
export AWS_ACCESS_KEY_ID=AKIAQ5ASH2LPZIIR5YHN
export AWS_SECRET_ACCESS_KEY=$AWS_SECRET
echo "Uploading data to S3 bucket - $BUCKET_NAME....."

aws s3 cp /tmp/$BACKUP s3://$BUCKET_NAME/$BACKUP