control "cis1-4-1" do
  impact 1.0
  title "1.4.1 Ensure permissions on bootloader config are configured (Scored)"
  desc "The grub configuration file contains information on boot settings and passwords for unlocking boot options. The grub configuration is usually located at /boot/grub/grub.conf and linked as /boot/grub/menu.lst and /etc/grub.conf ."
  describe file('/boot/grub/grub.conf') do
    its('owner') {should eq 'root'}
    its('group') {should eq 'root'}
  end
end
