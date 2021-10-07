def sign_in_and_play
  fill_in :player_1_name, with: "Pinar"
  fill_in :player_2_name, with: "Sasha"
  click_button "Submit"
end 
