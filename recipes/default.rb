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
when 'debian','rhel', 'fedora'

  unless "#{node['vmware-tools']['update']}" == false
    package 'open-vm-tools'
  else
    package 'open-vm-tools' do
      action :upgrade
    end
  end

when 'windows'

  include_recipe 'vmware-tools::_windows'

end
