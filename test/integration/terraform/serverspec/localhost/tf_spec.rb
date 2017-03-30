require 'serverspec'
set :backend, :exec

describe file('/usr/local/bin/terraform') do
    it { should exist }
    it { should be_executable.by('others') }
end

describe file('/tmp/terraform_0.9.0_linux_amd64.zip') do
    it { should_not exist }
end
