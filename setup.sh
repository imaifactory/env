#setup ruby
yum install gcc make libxml2-devel libxslt-devel
yum install ruby-devel rubygems
gem install nokogiri
gem install aws-sdk

#setup php
yum install php php-pear php-xml
pear channel-discover pear.amazonwebservices.com
pear install aws/sdk

#setup ruby
yum install python-setuptools
easy_install pip
pip install -U boto
