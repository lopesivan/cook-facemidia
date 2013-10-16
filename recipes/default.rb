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
