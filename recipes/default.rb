#
# Cookbook Name:: kafka
# Recipe:: default
#

case kafka_install_method
when :source, :binary
  include_recipe 'kafka8::_setup'
  include_recipe %(kafka8::#{node[:kafka][:install_method]})
  include_recipe 'kafka8::_configure'
else
  Chef::Application.fatal! %(Unknown install_method: #{node[:kafka][:install_method].inspect})
end
