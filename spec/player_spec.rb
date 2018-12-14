require "player"

describe Player do
  it "it can return player names" do
     # Player.new("Sub-Zero")
     # p $Player_1.name
     # p $Player_2.name
    expect($Player_1.name).to eq("Sub-Zero")
    expect($Player_2.name).to eq("Scorpion")
  end
end
