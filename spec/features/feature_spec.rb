# require File.expand_path '../spec_helper.rb', __FILE__

# As two Players,
# So we can play a personalised game of Battle,
# We want to Start a fight by entering our names and seeing the

describe 'Features' do

  before(:each) {
    visit('/')
    fill_in "name_one", with: "Astaroth"
    fill_in "name_two", with: "Nightmare"
    click_button "Enter Players"
  }

  feature "Enter player names" do
    scenario 'Users submit their player names' do
      expect(page).to have_text('The next battle will be between Astaroth and Nightmare')
    end

  end

  feature "See Player 2's hit points" do
    scenario "Player one wants to compare their score to Player two's score" do
      expect(page).to have_text('Nightmare: 100 HP')
    end
  end

end
