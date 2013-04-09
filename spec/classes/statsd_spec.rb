require 'spec_helper'

describe 'statsd' do
  let(:facts) { { :boxen_home => '/test/boxen' } }
  it { should contain_class('statsd') }
  it { should include_class('statsd::config') }
  it { should include_class('statsd::service') }
  it { should contain_package('statsd').with({ :provider => 'npm' }) }
  it { should contain_file('/test/boxen/config/statsd').with_ensure('directory') }
  it { should contain_file('/test/boxen/config/statsd/config.js') }
  it { should contain_service('statsd').with_ensure('running') }
end
