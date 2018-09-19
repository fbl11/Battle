# require File.expand_path '../spec_helper.rb', __FILE__

# As two Players,
# So we can play a personalised game of Battle,
# We want to Start a fight by entering our names and seeing them

RSpec.feature "Enter player names", :type => :feature do
  scenario 'Users submit their player names' do
    visit('/')

    fill_in "name_one", :with => "Astaroth"
    fill_in "name_two", :with => "Nightmare"
    click_button "Enter Players"

    expect(page).to have_text('The next battle will be between Astaroth and Nightmare')
  end
end
