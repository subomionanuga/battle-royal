require "game"

describe Game do

  let(:player_1) {double :player}
  let(:player_2) {double :player}

  it "attacks the player" do
  expect(player_2).to receive(:reduce_hp)
  subject.attack(player_2)
  end

end
