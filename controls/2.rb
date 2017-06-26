control "cis-1-2-3" do
  impact 1.0
  title "1.2.3 Ensure gpgcheck is globally activated (Scored)"
  desc "It is important to ensure that an RPM's package signature is always checked prior to installation to ensure that the software is obtained from a trusted source."
  describe file('/etc/yum.conf') do
    its('content') { should match /gpgcheck=1/ }
  end
end
