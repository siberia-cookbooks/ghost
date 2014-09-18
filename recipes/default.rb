#
# Cookbook Name:: ghost
# Recipe:: default
#
# Copyright 2014, Jacques Marneweck
#
# All rights reserved - Do Not Redistribute
#

package "bash" do
  version "4.3"
  action :install
end

package "nginx" do
  version "1.6.0"
  action :install
end

group "ghost" do
  gid node['ghost']['gid']
  not_if "grep '^ghost::#{node['ghost']['gid']}:$' /etc/group"
end

user "ghost" do
  uid node['ghost']['uid']
  gid node['ghost']['gid']
  comment "Ghost user"
  home "/home/ghost"
  shell "/opt/local/bin/bash"
  supports :manage_home=>false
  action :create
  notifies :run, "execute[set-no-password-for-ghost-user]", :immediately
  not_if "grep '^ghost:x:#{node['ghost']['uid']}:#{node['ghost']['gid']}:Ghost user:/home/ghost:/opt/local/bin/bash$' /etc/passwd"
end

execute "set-no-password-for-ghost-user" do
  command "passwd -N ghost"
  action :nothing
end

directory "/home/ghost" do
  owner "ghost"
  group "ghost"
  mode "0751"
end
