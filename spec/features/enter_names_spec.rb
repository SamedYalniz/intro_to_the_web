feature "Battle", :type=> :feature do
    scenario "Players type in their names" do
    sign_in_and_play
    expect(page).to have_content('Bart vs. Samed')
  end
end
