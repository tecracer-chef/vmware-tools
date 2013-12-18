name             'vmware-tools'
maintainer       'https://github.com/andrewfraley'
maintainer_email 'andrew.fraley@gmail.com'
license          'MIT'
description      'Installs/Configures vmware-tools'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.9.0'
depends			 "ark"	# you can omit this if not installing via source
depends			 "yum"	# you can omit this if not installing via rpm
