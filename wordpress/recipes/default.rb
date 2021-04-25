remote_file "/tmp/wordpress" do
    source "https://ja.wordpress.org/latest-ja.tar.gz"
    owner "root"
    group "root"
    mode "0644"
end

script "install_wordpress" do
    interpreter "bash"
    user "root"
    cwd "/tmp"
    code <<-EOH
      tar -zxvf latest-ja.tar.gz
      cp wordpress /var/www/html/
      chown -R www-data:www-data /var/www/html/wordpress
    EOH
end