# require "capybara/rspec"
# require_relative "../../app"

feature "Player names" do
  scenario "Can enter player names" do
    index_route
    expect(page).to have_content "Enter player names"
    names_and_start
    expect(page).to have_content "Welcome. Sub-Zero vs Scorpion"
  end
end

feature "Hitpoints" do
  scenario "View player hitpoints" do
    index_route
    names_and_start

    enter_arena
    expect(page).to have_content "Sub-Zero - 100HP : Scorpion - 100HP"
  end
end

feature "Attack player 2" do
  scenario "Attack player 2 and get confirmation" do
    index_route
    names_and_start
    enter_arena

    click_button "Attack Player 2"
    expect(page).to have_content "Player 2 is dying"
    end
  end
