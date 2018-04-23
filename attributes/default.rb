# Always be updating?
default['vmware-tools']['update'] = true
# Allow for reboots for Windows?
default['vmware-tools']['windows_reboot'] = true
# The location to get the Windows VMware-Tools executable from.
default['vmware-tools']['url'] = "https://packages.vmware.com/tools/esx/latest/windows/x64"
# The version of the Windows VMware-Tools.
default['vmware-tools']['version'] = "10.2.0-7253323"
