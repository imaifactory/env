#!/bin/bash

NAME=$1
OPTIONS=$2

aws ec2 describe-instances --filters "Name=tag-value,Values=${NAME}" --query "Reservations[*].Instances[*].[InstanceId,PublicDnsName]" $OPTIONS
