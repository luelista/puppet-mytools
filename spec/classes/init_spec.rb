require 'spec_helper'
describe 'mytools' do

  context 'with defaults for all parameters' do
    it { should contain_class('mytools') }
  end
end
