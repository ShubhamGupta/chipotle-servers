#
# Cookbook Name:: base-ubuntu
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
execute 'Update apt cache' do
  command 'apt-get update'
end

execute 'Upgrade the installed packages' do
  command 'apt-get upgrade -y'
end