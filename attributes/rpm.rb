
default['vmware-tools']['graphical-tools'] = false
default['vmware-tools']['esx_version'] = "5.5" # Should correspond to directories seen here: http://packages.vmware.com/tools/esx/index.html
default['vmware-tools']['repo_base_url'] = "http://packages.vmware.com/tools/esx/#{node['vmware-tools']['esx_version']}"
default['vmware-tools']['gpg_key_url'] = "http://packages.vmware.com/tools/keys/VMWARE-PACKAGING-GPG-RSA-KEY.pub"

