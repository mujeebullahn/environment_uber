#
# Cookbook:: python
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.
apt_update 'update_sources' do
  action:update
end

package 'python' do
  action :install
end

package 'python-pip' do
  action :install
end

#due to permissions denying i had to do these two packages
package 'libncurses5-dev' do
  action :install
end

execute 'install flask for python' do
  command 'pip install --user flask==0.10.1'
end

execute 'install jinja2 for python' do
  command 'pip install --user Jinja2==2.7.3'
end

execute 'install markupsafe for python' do
  command 'pip install --user MarkupSafe==0.23'
end

execute 'install Werkzeug==0.9.6 for python' do
  command 'pip install --user Werkzeug==0.9.6'
end

execute 'install gnureadline==6.3.3 for python' do
  command 'pip install --user gnureadline==6.3.3'
end

execute 'install itsdangerous==0.24 for python' do
  command 'pip install --user itsdangerous==0.24'
end

execute 'install rauth==0.7.0 for python' do
  command 'pip install --user rauth==0.7.0'
end

execute 'install requests==2.3.0 for python' do
  command 'pip install --user requests==2.3.0'
end

execute 'install wsgiref==0.1.2 for python' do
  command 'pip install --user wsgiref==0.1.2'
end

execute 'install gunicorn==18.0 for python' do
  command 'pip install --user gunicorn==18.0'
end

execute 'install Flask-SSLify==0.1.4 for python' do
  command 'pip install --user Flask-SSLify==0.1.4'
end
