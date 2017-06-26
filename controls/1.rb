control "cis-1-2-1" do
  impact 1.0
  title "1.2.2 Ensure GPG keys are configured (Not Scored)"
  desc "Most packages managers implement GPG key signing to verify package integrity during installation."
  describe command('rpm -q gpg-pubkey --qf "%{name}-%{version}-%{release} --> %{summary}\n"') do
   its('stdout') { should match (/Red Hat, Inc. \(release key 2\) <security@redhat.com>/) }
  end
end
