#
# Cookbook Name:: practicingruby
# Recipe:: app
#

# Install JavaScript runtime for Rails app
package "nodejs"

# Install Pygments for syntax highlighting
package "python-pygments"

# Create deploy user first
include_recipe "practicingruby::deploy_user"

# Create config directory for Rails app
config_dir = "/home/#{node["practicingruby"]["deploy"]["username"]}/shared"
directory config_dir do
  owner  node["practicingruby"]["deploy"]["username"]
  group  node["practicingruby"]["deploy"]["username"]
  mode   "2775"
  action :create
end

# Create config files for Rails app
%w(cache_cooker_settings.rb
   database.yml
   mail_settings.rb
   mailchimp_settings.rb
   mixpanel.rb
   omniauth.rb
   secret_token.rb
   stripe.rb
).each do |file|
  template File.join(config_dir, file) do
    owner  node["practicingruby"]["deploy"]["username"]
    group  node["practicingruby"]["deploy"]["username"]
    mode   "0644"
    action :create
    variables(
      # For secret_token.rb.erb
      :secret => "3f8e352c942d04b489795f5a9fe464c0"
    )
  end
end
