# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
PATH=$PATH:~/aws/emr:~/aws/bin:~/aws/s3cmd

#setup aws environment
#export AWS_ACCESS_KEY_ID=`perl ~/aws/bin/fetch_iam_data.pl AccessKeyId`
#export AWS_SECRET_ACCESS_KEY=`perl ~/aws/bin/fetch_iam_data.pl SecretAccessKey`
export AWS_ACCESS_KEY_ID=
export AWS_SECRET_ACCESS_KEY=
