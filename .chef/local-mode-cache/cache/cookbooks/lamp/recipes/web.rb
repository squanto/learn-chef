#
# Cookbook:: lamp
# Recipe:: web
#
# Copyright:: 2020, The Authors, All Rights Reserved.

package 'apache2' # installs by default

template node['lamp']['index_path'] do
  source 'index.erb'
end

service 'apache2' do
  action [:start, :enable]
end

