remote_file "#{Chef::Config[:file_cache_path]}\\DSCResourceKit09292014.zip" do
  source 'https://gallery.technet.microsoft.com/scriptcenter/DSC-Resource-Kit-All-c449312d/file/131371/2/DSC%20Resource%20Kit%20Wave%2010%2002182015.zip'
end

dsc_script 'get-dsc-resource-kit' do
  code <<-EOH
    Archive reskit
    {
      ensure = 'Present'
      path = "#{Chef::Config[:file_cache_path]}\\DSCResourceKit09292014.zip"
      destination = "#{ENV['PROGRAMW6432']}\\WindowsPowerShell\\Modules"
    }
  EOH
end
