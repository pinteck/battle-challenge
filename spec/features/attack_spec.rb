feature 'Attack Player 2' do
  scenario 'press attack button and receive confirmation' do
    visit('/')
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_content 'You attacked!'
  end
end