require "rails_helper"

feature "user adds an album", %(
  As a music nerd
  I want to add an album
  Just because that's what this app does
) do

  # Acceptance Criteria
  #
  # * I must specify an album name

  scenario "user fills out form correctly" do
    artist = Artist.create(name: "Nirvana")

    visit "/artists/#{artist.id}"
    fill_in "Name", with: "Nevermind"
    click_button "Create Album"
    expect(page).to have_content("New album created!")
  end

  scenario "user doesn't fill out form" do
    artist = Artist.create(name: "Nirvana")

    visit "/artists/#{artist.id}"
    click_button "Create Album"
    expect(page).to have_content("You forgot something, buddy.")
  end

end
