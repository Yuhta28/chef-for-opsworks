package ["mariadb-server","mariadb-client]" do
  action :install
end


service "mariadb" do
  action [ :enable, :start]
end
