def index_route
  visit("/")
end

def names_and_start
  fill_in "Player_1", with: "Sub-Zero"
  fill_in "Player_2", with: "Scorpion"
  click_button "Start Game"
end

def enter_arena
  visit("/play")
  click_button "Enter the Arena"
end
