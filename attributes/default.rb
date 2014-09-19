#
# Cookbook Name:: ghost
# Attributes:: default
#
# Copyright 2014, Jacques Marneweck.
#
# All rights reserved - Do Not Redistribute
#

default['ghost'] = {
  'uid' => '1080',
  'gid' => '1080',
  'url' => 'blog.kaizengarden.co',
  'email' => 'ghost@kaizengarden.co',
}
