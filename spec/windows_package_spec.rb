require_relative 'spec_helper'

describe 'chefspec_windows_tests::windows_package' do
  let(:chef_run) { ChefSpec::SoloRunner.new(platform: 'windows', version: '2012R2').converge(described_recipe) }
  
  it 'installs a windows package' do
    expect(chef_run).to install_windows_package('7zip')
  end
end
