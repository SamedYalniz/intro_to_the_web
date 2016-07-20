require 'spec_helper'

RSpec.feature "Battle", :type=> :feature do
    scenario "Players type in their names" do
    visit "/"
    fill_in 'player_1', :with => 'Bart'
    fill_in 'player_2', :with => 'Samed'
    click_button "Submit"
    expect(page).to have_content('Bart vs. Samed')


  end
end
