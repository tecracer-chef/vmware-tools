#
# Cookbook Name:: vmware-tools
# Recipe:: default
#
# Copyright 2018, JJ Asghar
#

if 'debian' == node['platform_family']
  include_recipe "apt"
end

case node['platform_family']
when 'debian'

  package 'open-vm-tools'

when 'rhel', 'fedora'

  package 'open-vm-tools'

when 'windows'

  include_recipe 'vmware-tools::_windows'

end
