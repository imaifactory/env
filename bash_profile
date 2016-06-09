# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/bin

export PATH

alias list-ec2="aws ec2 describe-instances | jq -r '.Reservations[].Instances[] | [.Tags[].Value, .PublicDnsName,.PrivateDnsName] | @tsv'"
