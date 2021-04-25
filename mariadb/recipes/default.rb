package "mariadb-server" do
  action :install
end


service "mariadb" do
  action [ :enable, :start]
end
