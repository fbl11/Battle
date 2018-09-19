
# As Player 1,
# So I can see how close I am to winning
# I want to see Player 2's Hit Points

feature "See Player 2's hit points" do
  scenario "Player 1 wants to compare their score to Player 2's score" do
    sign_in_and_play
    expect(page).to have_text('Nightmare: 100 HP')
  end
end