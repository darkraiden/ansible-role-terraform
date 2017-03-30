require 'serverspec'
set :backend, :exec

describe file('/usr/local/bin/terraform') do
    it { should exist }
    it { should be_executable.by('others') }
end

describe file('/tmp/#{terraform_compressed_file}') do
    it { should_not exist }
end
