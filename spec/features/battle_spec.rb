# require "capybara/rspec"
# require_relative "../../app"

feature "Player names" do
  scenario "Can enter player names" do
    visit("/")
    expect(page).to have_content "Enter player names"
    fill_in "Player_1", with: "Sub-Zero"
    fill_in "Player_2", with: "Scorpion"

    click_button "Start Game"
    expect(page).to have_content "Welcome. Sub-Zero vs Scorpion"
  end
end
