#
# Cookbook Name:: vmware-tools
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#



installed_version = `ver=\`vmware-toolbox-cmd -v\`;  ver=${ver%.*}; echo $ver`

ark 'vmware-tools' do
  url node['vmware-tools']['url']
  path node['vmware-tools']['src_path']
  action :put
end

execute 'build-vmware-tools' do
  command "#{node['vmware-tools']['src_path']}/vmware-tools/vmware-install.pl --default"

  if installed_version 
    if node['vmware-tools']['upgrade_only']
      # Only install if version specified is greater than version installed
       not_if { Gem::Version.new(installed_version) >= Gem::Version.new(node['vmware-tools']['version']) }
    else
      # Only install if version is different from the version specified
      not_if { Gem::Version.new(installed_version) == Gem::Version.new(node['vmware-tools']['version']) }
    end
  end

end


