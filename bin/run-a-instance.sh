#!/bin/bash

INSTANCE_TYPE=$1
INSTANCE_NAME_TAG=$2
if [ $3 = 'pv' ]; then
    IMAGE_ID='ami-c9562fc8'
else
    IMAGE_ID='ami-bb562fba'
fi

INSTANCE_ID=`aws ec2 run-instances --image ${IMAGE_ID} --instance-type ${INSTANCE_TYPE} --key-name yuimai --security-groups general --iam-instance-profile 'Name=general' | grep InstanceId | awk '{print $4}'`

aws ec2 create-tags --resources ${INSTANCE_ID} --tags "Key=Name,Value=${INSTANCE_NAME_TAG}"

HOST=`aws ec2 describe-instances --filters "Name=tag-value,Values=${INSTANCE_NAME_TAG}" --query "Reservations[*].Instances[*].[PublicDnsName]" --output text`

while [ $HOST = 'None' ]
do
    HOST=`aws ec2 describe-instances --filters "Name=tag-value,Values=${INSTANCE_NAME_TAG}" --query "Reservations[*].Instances[*].[PublicDnsName]" --output text`
done

aws ec2 describe-instances --filters "Name=tag-value,Values=${INSTANCE_NAME_TAG}" --query "Reservations[*].Instances[*].[InstanceId,PublicDnsName]"
