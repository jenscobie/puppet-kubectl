require 'spec_helper'

describe 'kubectl' do
  let(:facts) { default_test_facts }

  it do
    should include_class('wget')

    should have_exec_resource_count(1)

    should contain_file('/test/boxen/bin/kubectl').with({
      'mode'   => '0111',
    })
  end
end
