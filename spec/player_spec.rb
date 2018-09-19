require 'player'

describe Player do
  subject(:astaroth) { described_class.new('Astaroth') }

  describe '#name' do
    it "returns a player's name" do
      expect(astaroth.name).to eq('Astaroth')
    end
  end

end
