feature 'Enter names' do
  scenario 'Expects players to fill in their names' do
    visit('/')
    sign_in_and_play

    expect(page).to have_content 'Pinar vs. Sasha'
  end
end