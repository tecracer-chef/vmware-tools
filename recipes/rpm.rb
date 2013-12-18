
include_recipe "vmware-tools::yum_repo"


# We need this package no matter what
package "vmware-tools-esx-nox" do
	action :install
end

# This will also add the graphical tools
package "vmware-tools-esx" do
	action :install
	only_if { node['vmware-tools']['graphical-tools'] }
end