require 'game'
describe Game do
  let(:prashant){double :player}
  let(:samed){double :player}
  subject(:game){described_class.new(prashant, samed)}

  context "#attack" do
    it "Player 1 damages Player 2" do
      allow(prashant).to receive(:receive_damage)
      allow(samed).to receive(:receive_damage)
      expect(samed).to receive(:receive_damage)
      game.attack(samed)
    end
  end

  context "Has two players" do
    it "should return player1"do
      expect(game.player_1).to eq prashant
    end

    it "should return player2"do
      expect(game.player_2).to eq samed
    end
  end

  describe "#current_turn" do
    it 'starts as player 1' do
      expect(game.current_turn).to eq prashant
    end
  end

  describe '#switch_turns' do
    it 'switches turnes' do
      game.switch_turns
      expect(game.current_turn).to eq samed
    end
  end

end
