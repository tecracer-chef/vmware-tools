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

unless "#{node['vmware-tools']['windows_reboot']}" == false
  windows_package 'VMware-tools' do
    source "#{Chef::Config['file_cache_path']}/VMware-tools.exe"
    success_code [0,1618,1641,3010]
    options  '/s /v"/qn REBOOT=R"'
    creates 'C:\\Program Files\\VMware\\VMware Tools\\vmtoolsd.exe'
  end
else
  windows_package 'VMware-tools' do
    source "#{Chef::Config['file_cache_path']}/VMware-tools.exe"
    success_code [0,1618,1641,3010]
    options  '/s /v"/qn"'
    creates 'C:\\Program Files\\VMware\\VMware Tools\\vmtoolsd.exe'
  end
end
