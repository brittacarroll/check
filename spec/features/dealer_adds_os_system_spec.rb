require 'rails_helper'

feature "dealer adds operating system" do
  scenario "dealer fills out new OS form" do
    visit root_path

    fill_in "Name", with: "Cool"
    click_on "Submit"

    expect(page.current_path).to eq operating_systems_path
    expect(page).to have_content("Cool")
    expect(page).to have_content("Succesfully added operating system!")
  end
end
