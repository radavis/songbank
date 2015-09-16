require "rails_helper"

feature "user adds an artist", %(
  As a music nerd
  I want to add an artist
  So that I can then add their albums
) do

  # Acceptance Criteria
  #
  # * I must specify the artist name
  #

  scenario "fill out the form correctly" do
    visit "/"
    # visit root_path
    click_link "New Artist"
    fill_in "Name", with: "Beck"
    click_button "Create"
    expect(page).to have_content("New artist created!")
  end

end
