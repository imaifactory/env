# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
PATH=$PATH:~/aws/emrclient:~/aws/bin
PERL5LIB=~/perl5/lib/perl5

#setup aws environment
#export AWS_ACCESS_KEY_ID=`perl ~/aws/bin/fetch_iam_data.pl AccessKeyId`
#export AWS_SECRET_ACCESS_KEY=`perl ~/aws/bin/fetch_iam_data.pl SecretAccessKey`
export AWS_ACCESS_KEY_ID=`AKIAJPZIPDOMDTQY55UA`
export AWS_SECRET_ACCESS_KEY=`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`
