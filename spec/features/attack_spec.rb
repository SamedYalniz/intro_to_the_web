feature "Battle" do
  scenario "Attacking player_2" do
    sign_in_and_play
    click_button "Attack!"

    expect(page).to have_content("Samed got Attacked!")
  end

  scenario " attack reduces 10 hp of player 2 " do
    sign_in_and_play
    click_button "Attack!"
    click_link "OK"
    expect(page).not_to have_content("Samed: 60HP")
    expect(page).to have_content("Samed: 50HP")
  end
end
