feature "Battle" do
  scenario "Attacking player_2" do
    sign_in_and_play
    click_button "Attack!"

    expect(page).to have_content("Samed got Attacked!")

  end
end
