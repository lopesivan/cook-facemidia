# recipes/default.rb
template "#{ENV['HOME']}/facemidia.txt" do
  source 'facemidia.txt.erb'
  mode '0644'
end

%w(curl build-essential).each do |pkg|
  package pkg do
    action :install
  end
end

directory "/tmp/folder" do
  owner "root"
  group "root"
  mode 0755
  action :create
end

#openssl passwd -1 "carioca90"
user "random" do
  comment "Random User"
  uid 1000
  gid "users"
  home "/home/random"
  shell "/bin/bash"
  password "$1$cFrbQZlr$edA4UCyjDUxA27eTNan5T."
end
