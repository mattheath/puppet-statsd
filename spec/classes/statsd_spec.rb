require 'spec_helper'

describe 'statsd' do
  it { should contain_package('statsd') }
end
