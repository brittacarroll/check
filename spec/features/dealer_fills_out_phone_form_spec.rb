require 'rails_helper'

feature "user adds type of phone OS" do
  scenario "user fills out form" do
    visit root_path
    fill_in "Name", with: "El Capitan"
    click_on "Submit"

    visit phones_path
    click_on "Add Phone"

    fill_in "Manufacturer", with: "Apple"
    fill_in "Screen Size", with: "Small"
    select("El Capitan", from: "OS" )
    fill_in "Charging Port", with: "Lightning"
    fill_in "Name", with: "iPhone 6"
    fill_in "Quantity", with: "2"

    click_on "Submit"

    expect(page.current_path).to eq phones_path
    expect(page).to have_content("Apple")
    expect(page).to have_content("iPhone 6")
    expect(page).to have_content("Phone saved succesfully!")
  end
end
