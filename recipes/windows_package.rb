#
# Cookbook Name:: chefspec_windows_tests
# Recipe:: default
#
# Copyright (C) 2014 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

windows_package '7zip' do
  source 'C:\7z920.msi'
  action :install
end

