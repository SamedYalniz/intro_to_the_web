require 'player'


describe Player do



  context "#name" do

    subject(:prashant) { described_class.new("Prashant")}

    it "returns name of player"do
      expect(prashant.name).to eq("Prashant")
    end
  end
end
