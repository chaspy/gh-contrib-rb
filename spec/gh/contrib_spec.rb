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
end
