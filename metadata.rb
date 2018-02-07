name             'vmware-tools'
maintainer       'JJ Asghar'
maintainer_email 'jj@chef.io'
license          'Apache-2.0'
description      'Installs/Configures vmware-tools'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '1.2.0'

depends        'apt'
depends	       'yum'

chef_version '>= 13'

%w(ubuntu debian redhat centos suse opensuse windows).each do |os|
  supports os
end

issues_url 'https://github.com/jjasghar/chef-vmware-tools/issues'
source_url 'https://github.com/jjasghar/chef-vmware-tools'
