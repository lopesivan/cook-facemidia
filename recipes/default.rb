# recipes/default.rb
template "#{ENV['HOME']}/hello-world.txt" do
  source 'hello-world.txt.erb'
  mode '0644'
end

%w(curl build-essential libboost1.48-all-dev).each do |pkg|
  package pkg do
    action :install
  end
end
