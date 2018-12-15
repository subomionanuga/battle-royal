require "player"

describe Player do

  subject(:player_1) {Player.new("Sub-Zero")}
  subject(:player_2) {Player.new("Scorpion")}

  it "it can return player names" do
    expect(player_1.name).to eq("Sub-Zero")
    expect(player_2.name).to eq("Scorpion")
  end

  it "returns the starting hp value of the player" do
    expect(player_1.hp). to eq described_class::DEFAULT_HP
  end

  # it "attacks the player" do
  # expect(player_2).to receive(:reduce_hp)
  # player_1.attack(player_2)
  # end

  it "reduces the players hp by 10" do
    expect{ player_2.reduce_hp }.to change { player_2.hp }.by (-10)
  end
end
