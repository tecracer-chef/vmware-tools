vmware-tools Cookbook
=====================
Chef cookbook for installing vmware tools.  Currently supports installation from source (default) or from VMWare's yum repo 


Requirements
------------
- If you're going to install from source, you'll need the minimum requirements to build vmware tools. On a RHEL or CentOS system, you'll need: make gcc kernel-devel kernel-headers glibc-headers perl

- This has only been tested on RHEL6, but should probably work on Debian/Ubuntu if building from source.  On Ubuntu you'll need build-essential.

Attributes
----------
#### Source Install (default)
* `node['vmware-tools']['url']` - URL to download the source tarball.  No default.
* `node['vmware-tools']['version']` - Version of VMWare tools you're installing, e.g. "9.4.0".  Used to prevent installing over automatically upgraded versions.
* `node['vmware-tools']['upgrade_only']` - When set to true (default), only install the specified version if it's newer than the installed version
* `node['vmware-tools']['src_path']` - Path to store the vmware-tools source.  Default: /usr/local/src


#### RPM Install
* `node['vmware-tools']['graphical-tools']` - Set if you're running X 
* `node['vmware-tools']['esx_version']` - Should correspond to directories seen here: http://packages.vmware.com/tools/esx/index.html
* `node['vmware-tools']['repo_base_url']` - ESX versions seen here: http://packages.vmware.com/tools/esx/
* `node['vmware-tools']['gpg_key_url']` - URL for the repo's gpg key.  Default is set to VMWare's.  Leave default unless you're using you're own yum repo

Usage
-----
#### vmware-tools::default
The default recipe will install vmware-tools from source downloaded from a web server that you specify.  

##### Example Role:

```json
name "vmware-tools_role"
description "vmware-tools install"
run_list [
    "recipe[vmware-tools]",
    ]

default_attributes(
  "vmware-tools" => {
    "url" => "http://yourserver.local/vmware/latest-tools.tgz",
    "version" => "9.4.0"
  }
)
```

#### vmware-tools::rpm
This recipe will install vmware-tools from VMWare's yum repo.  Do not include the default recipe if using this recipe.

##### Example Role:

```json
name "vmware-tools-rpm_role"
description "vmware-tools rpm install"
run_list [
    "recipe[vmware-tools::rpm]",
    ]
 # Note you don't need to set any attributes
```


Contributing
------------

1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
- Authors: https://github.com/andrewfraley/
- Github URL: https://github.com/andrewfraley/vmware-tools

