feature 'Show score' do
  scenario 'it shows players scores' do
    visit('/score')
    # fill_in :player_1_name, with: "Pinar"
    # fill_in :player_2_name, with: "Sasha"
    # fill_in :points1, with: 12
    # fill_in :points2, with: 16
    # click_button "Submit"

    # save_and_open_page 
    
    expect(page).to have_content 'Pinar:12 Sasha:16'
  end
end