require 'player'


describe Player do
  subject(:prashant) { described_class.new("Prashant")}
  subject(:samed) { described_class.new("Samed")}

  context "#name" do
    it "returns name of player"do
      expect(prashant.name).to eq("Prashant")
    end
  end

  context "#hp" do
    it "returns hp of player" do
      expect(prashant.hp).to eq 60
    end
  end

  describe "#receive_damage" do
    it "reduces players hit points" do
      expect{prashant.receive_damage}.to change{prashant.hp}.by(-10)
    end
  end
end
