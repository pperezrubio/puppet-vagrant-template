# This file is under SCM control; do not edit in-place.
#
# DEVELOPMENT VERSION
#
# Local Puppet configs for deployment at BVOX main datacenter

# JSON configuration
$filename = "/vagrant/config/config.json"
$config_json = json_reader($filename)

# config_json is a hash that follows the JSON hierachy
$admin_pwd = $config_json[passwords][admin]
$admin_pwd_crypted = $config_json[passwords][admin_crypted]
notice($admin_pwd)
