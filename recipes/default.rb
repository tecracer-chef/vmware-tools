#
# Cookbook:: vmware-tools
# Recipe:: default
#
# Copyright:: 2020, tecRacer Opensource, Apache-2.0.

include_recipe 'apt' if platform_family?('debian') # rubocop:disable ChefModernize/IncludingAptDefaultRecipe

case node['platform_family']
when 'debian', 'rhel', 'fedora', 'amazon'

  if node['vmware-tools']['update']
    package 'open-vm-tools'
  else
    package 'open-vm-tools' do
      action :upgrade
    end
  end

when 'windows'

  include_recipe 'vmware-tools::_windows'

end
