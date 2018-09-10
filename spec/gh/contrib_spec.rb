RSpec.describe Gh::Contrib do
  it "has a version number" do
    expect(Gh::Contrib::VERSION).not_to be nil
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
