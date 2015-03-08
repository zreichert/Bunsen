require 'spec_helper'
describe 'bunsen' do

  context 'with defaults for all parameters' do
    it { should contain_class('bunsen') }
  end
end
