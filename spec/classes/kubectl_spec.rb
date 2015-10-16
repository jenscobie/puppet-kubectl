require 'spec_helper'

describe 'kubectl' do
  let(:facts) { default_test_facts }

  it do
    should have_exec_resource_count(1)
  end
end
