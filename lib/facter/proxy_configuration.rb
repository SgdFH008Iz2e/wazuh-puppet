Facter.add(:wazuh_proxy_configuration) do
  setcode do
    file_path = '/var/ossec/etc/proxy.conf'
    if File.exist?(file_path)
      File.read(file_path).strip
    else
      nil
    end
  end
end