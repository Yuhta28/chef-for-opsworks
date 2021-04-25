package "mariadb" do
  retries 3
  retry_delay 5
  action :install
end


service "mariadb" do
  action [ :enable, :start]
end
