# Add the repo to the system

rhel_major_version = node['platform_version'].chars.first
march = node['kernel']['machine']
repo_url = "#{node['vmware-tools']['repo_base_url']}/rhel#{rhel_major_version}/#{march}"


yum_repository 'vmware-tools' do
  description "VMWare tools repo"
  baseurl repo_url
  gpgkey node['vmware-tools']['gpg_key_url']
  action :create
end

