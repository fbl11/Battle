def sign_in_and_play
  visit('/')
  fill_in "name_one", with: "Bob"
  fill_in "name_two", with: "Nightmare"
  click_button "Enter Players"
end