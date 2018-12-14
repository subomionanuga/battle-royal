# require "capybara/rspec"
# require_relative "../../app"

feature "Player names" do
  scenario "Can enter player names" do
    visit("/")
    expect(page).to have_content "Enter player names"
    names_and_start
    expect(page).to have_content "Welcome. Sub-Zero vs Scorpion"
  end
end

feature "Hitpoints" do
  scenario "View player hitpoints" do
    visit("/")
    names_and_start

    visit("/play")
    click_button "Enter the Arena"
    expect(page).to have_content "Sub-Zero - 100HP : Scorpion - 100HP"
  end
end
