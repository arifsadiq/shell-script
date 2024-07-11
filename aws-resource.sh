#!/bin/bash

##################################
#Author: Arif Sadiq
#Designation: DevOps Engineer
#
#Purpose: This script will print the AWS resources
#Resources: S3, EC2 Instances, Lambda, IAM Users
##################################

set -e

echo "Organization: <Your-Organization-Name>"
echo "AWS region: <AWS-Region>"

# List S3 Buckets

echo "S3 Buckets"
aws s3 ls

# List EC2 Instances
echo "List EC2 Instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

# List Lambda Functions
echo "List Lambda Functions"
aws lambda list-functions

# List IAM Users
echo "List IAM Users"
aws iam list-users
