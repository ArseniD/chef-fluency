#
# Cookbook:: postgresql
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

package 'postgreql-server' do
	notifies :run, 'execute[postgresqk-init]'
end

execute 'postgresql-init' do
	command 'postgreql-setup initdb'
	action :nothing
end

service 'postgresql' do
	action [:enable, :start]
end
