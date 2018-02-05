#
# Cookbook Name:: vmware-tools
# Recipe:: _default
#
# Copyright 2018, JJ Asghar
#

remote_file "#{Chef::Config['file_cache_path']}/VMware-tools.exe" do
  source "#{node['vmware-tools']['url']}/VMware-tools-#{node['vmware-tools']['version']}-x86_64.exe"
  action :create_if_missing
end

execute 'install the application' do
  command "#{Chef::Config['file_cache_path']}/VMware-tools.exe /s /v'/qn reboot=r'"
  creates 'C:\\Program Files\\VMware\\VMware Tools\\vmtoolsd.exe'
end
