require 'chefspec'
require 'chefspec/berkshelf'

describe 'chefspec_windows_tests::windows_feature' do
  let(:chef_run) do 
    ChefSpec::SoloRunner.new(platform: 'windows', version: '2012R2') do |node|
      node.set['windows']['feature_provider'] = 'powershell'
    end.converge(described_recipe)
  end
  
  it 'installs a windows feature' do
    expect(chef_run).to install_windows_feature('NET-Framework-Core')
  end
end
