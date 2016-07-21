feature "Battle", :type => :feature do
  scenario "viewing hit point of player_2" do
    sign_in_and_play
    expect(page).to have_content("Samed: 60")
  end
end
