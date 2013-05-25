# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
PATH=$PATH:~/aws/emrclient:~/aws/bin:~/aws/s3cmd:~/bin:~/perl5/bin

#setup aws environment
#export AWS_ACCESS_KEY_ID=`perl ~/aws/bin/fetch_iam_data.pl AccessKeyId`
#export AWS_SECRET_ACCESS_KEY=`perl ~/aws/bin/fetch_iam_data.pl SecretAccessKey`
export AWS_ACCESS_KEY_ID=
export AWS_SECRET_ACCESS_KEY=
export AWS_DEFAULT_REGION=ap-northeast-1

alias create_asg='aws autoscaling create-auto-scaling-group'
alias update_asg='aws autoscaling update-auto-scaling-group'
alias delete_asg='aws autoscaling delete-auto-scaling-group'
alias describe_asg='aws autoscaling describe-auto-scaling-groups'
