require 'spec_helper'
require 'rake'

describe 'Rakefile' do
  
  def rake_filepath
    @rake_filepath ||= File.expand_path("../../../ext/Rakefile", __FILE__)
  end
  
  after :each do
    Rake::Task.clear
  end
  
  it %q<will load it's deps without error> do
    expect do
      load rake_filepath
    end.not_to raise_error
  end
  
  describe 'task default:' do
    
    it 'will automatically call :assemble' do
      allow(Vigilem::Assembly).to receive(:install_handler!)
      expect(Vigilem::Assembly).to receive(:install_handler!)
      
      ARGV.replace(%w(-f ext/Rakefile))
      Rake.application.run
      Rake.application.thread_pool.join
    end
  end
  
  describe :assemble do
    
    before :all do
      load rake_filepath
    end
    
    it 'will raise error when no Stat is available' do
      allow(Vigilem::Assembly).to receive(:install_handler!).and_call_original
      allow(Vigilem::Assembly).to receive(:find_stat) { nil }
      
      expect do
        Rake::Task[:assemble].invoke
      end.to raise_error(Vigilem::Assembly::NoAvailableHandler)
    end
    
  end
  
end