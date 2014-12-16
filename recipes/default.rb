#
# Cookbook Name:: chefspec_windows_tests
# Recipe:: default
#
# Copyright (C) 2014 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

windows_feature 'NET-Framework-Core' do
  all true
  provider Chef::Provider::WindowsFeaturePowershell
  action :install
end

