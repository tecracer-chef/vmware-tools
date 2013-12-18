# I'd suggest using something like vmware-tools_latest.tar.gz on your web server and symlinking to the right file.
# This will check for new versions based on the file's hash.
default['vmware-tools']['url'] = ""
default['vmware-tools']['version'] = "9.4.0"
default['vmware-tools']['upgrade_only'] = true # When set to true, only install the specified version if it's newer than the installed version
default['vmware-tools']['src_path'] = "/usr/local/src"
