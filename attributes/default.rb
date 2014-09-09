default['catch_and_redirect'] = 'certificate.theodi.org'
default['prefix'] = 'staging'
default['databags']['primary'] = 'certificates'
default['database'] = 'certificates'
default['deployment']['assets_allow_origin'] = '*'
default['deployment']['precompile_assets'] = 'false'
default['deployment']['rack_env'] = 'production'
default['deployment']['revision'] = 'STAGING'
default['envbuilder']['base_dbi'] = 'production'
default['envbuilder']['base_dir'] = '/home/certificates'
default['envbuilder']['group'] = 'certificates'
default['envbuilder']['owner'] = 'certificates'
default['force_ssl'] = 'false'
default['git_project'] = 'open-data-certificate'
default['migrate'] = 'bundle exec rake db:migrate'
default['post_deploy_tasks'] = ["bundle exec rake odc:deploy"]
default['project_fqdn'] = 'certificates.theodi.org'
default['rack_env'] = 'production'
default['requires_memcached'] = 'true'
default['user'] = 'certificates'
default['odi-ruby']['users'] = {'certificates' => ["1.9.3-p547"]}

default['chef_client']['cron']['use_cron_d'] = true
default['chef_client']['cron']['hour'] = "*"
default['chef_client']['cron']['minute'] = "*/5"
default['chef_client']['cron']['log_file'] = "/var/log/chef/cron.log"
default['chef_client']['server_url'] = 'https://chef.theodi.org'
