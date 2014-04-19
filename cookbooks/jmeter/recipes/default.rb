#
# Cookbook Name:: jmeter
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

remote_file "/#{ node['jmeter']['tarball'] }" do
  source node['jmeter']['fetch_url']
  owner 'ubuntu'
  mode 755
  notifies :run, "execute[Unpack jmeter Tarball]", :immediately
end

execute "Unpack jmeter Tarball" do
  command "tar -xvzf /#{ node['jmeter']['tarball'] }"
  action :nothing
  cwd '/'
  notifies :run, "execute[move jmeter dir]", :immediately
end

execute "move jmeter dir" do
  command "mv /#{ node['jmeter']['dir'] } #{ node['jmeter']['root'] }"
  action :nothing
  notifies :run, "execute[remove jmeter bin]", :immediately
end

execute 'remove jmeter bin' do
  command "rm /#{ node['jmeter']['tarball'] }"
  action :nothing
end