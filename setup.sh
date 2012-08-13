yum -y update

#setup ruby
yum -y install gcc make libxml2-devel libxslt-devel
yum -y install ruby-devel rubygems
gem install nokogiri
gem install aws-sdk

#setup php
yum -y install php php-pear php-xml
pear channel-discover pear.amazonwebservices.com
pear install aws/sdk

#setup ruby
yum -y install python-setuptools
easy_install pip
pip install -U boto
