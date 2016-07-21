require 'game'
describe Game do
  let(:prashant){double :player}
  let(:samed){double :player}
  subject(:game){described_class.new}

  context "#attack" do
    it "Player 1 damages Player 2" do
      allow(prashant).to receive(:receive_damage)
      allow(samed).to receive(:receive_damage)
      expect(samed).to receive(:receive_damage)
      game.attack(samed)
    end
  end
end
