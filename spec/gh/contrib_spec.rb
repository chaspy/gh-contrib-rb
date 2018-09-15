RSpec.describe Gh::Contrib do
  it "has a version number" do
    expect(Gh::Contrib::VERSION).not_to be nil
  end

  before(:each) { @cli = CLI.new }

  context 'validation success' do
    it {expect(@cli.send(:validate,"chaspy","2018-08-21","2018-08-31")).to eq(true) }
  end

  context 'validation success' do
    it {expect(@cli.send(:validate,"chaspy","2018-08-211","2018-08-31")).to eq(false) }
  end

  context 'validation success' do
    it {expect(@cli.send(:validate,"chaspy","2018-08-21","2018-08-311")).to eq(false) }
  end
end

RSpec.describe 'gh-contrib command', type: :aruba do
  context 'help option' do
    before(:each) { run('gh-contrib help') }
    it { expect(last_command_started).to be_successfully_executed }
  end

  context 'report option' do
    before(:each) { run('gh-contrib report -u chaspy -s 2018-09-01 -e 2018-09-02') }
    it { expect(last_command_started).to be_successfully_executed }
  end
end
