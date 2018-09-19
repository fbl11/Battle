# require File.expand_path '../spec_helper.rb', __FILE__

# As two Players,
# So we can play a personalised game of Battle,
# We want to Start a fight by entering our names and seeing the


feature "Enter player names" do
  scenario 'Users submit their player names' do
    sign_in_and_play
    expect(page).to have_text('The next battle will be between Bob and Nightmare')
  end

end
