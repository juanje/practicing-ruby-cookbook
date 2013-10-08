#
# Cookbook Name:: practicingruby
# Attributes:: default
#

# Ruby version to install
default["practicingruby"]["ruby"]["version"] = "2.0.0-p247"

# Defaults for gem_package resource
default["practicingruby"]["ruby"]["gem"]["binary"]  = "/opt/rubies/#{node["practicingruby"]["ruby"]["version"]}/bin/gem"
default["practicingruby"]["ruby"]["gem"]["options"] = "--no-ri --no-rdoc"

# Deployment user
default["practicingruby"]["deploy"]["username"]      = "deploy"
default["practicingruby"]["deploy"]["ssh_keys"]      = []
default["practicingruby"]["deploy"]["sudo_commands"] = ["/usr/local/bin/god"]

# Rails app settings
default["practicingruby"]["app"]["secret_token"]              = "3f8e352c942d04b489795f5a9fe464c0"
default["practicingruby"]["app"]["stripe"]["secret_key"]      = "SECRET"
default["practicingruby"]["app"]["stripe"]["publishable_key"] = "PUBLISHABLE"
default["practicingruby"]["app"]["stripe"]["webhook_path"]    = "/oh/yeah/stripe/webhooks"
default["practicingruby"]["app"]["omniauth"]["github_key"]    = "client-key"
default["practicingruby"]["app"]["omniauth"]["github_secret"] = "seekrit"
default["practicingruby"]["app"]["mailchimp"]["list_id"]      = "YOUR-LIST-ID"
default["practicingruby"]["app"]["mailchimp"]["api_key"]      = "YOUR-API-KEY"
default["practicingruby"]["app"]["mailchimp"]["testers"]      = ["your@email.com"]
default["practicingruby"]["app"]["mailchimp"]["sender_name"]  = "Your Sender Name"
default["practicingruby"]["app"]["mailchimp"]["sender_email"] = "Your Sender Email"
default["practicingruby"]["app"]["mailchimp"]["webhook_key"]  = "Your webhook key"
