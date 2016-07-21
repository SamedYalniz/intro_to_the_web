def sign_in_and_play
  visit "/"
  fill_in 'player_1', :with => 'Bart'
  fill_in 'player_2', :with => 'Samed'
  click_button "Submit"
end
