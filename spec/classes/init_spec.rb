require 'spec_helper'
describe 'megaraid' do

  context 'with defaults for all parameters' do
    it { should contain_class('megaraid') }
  end
end
