require 'rails_helper'

feature "shopper can view list of phones" do
  scenario "shopper can see all phones in stock and not in stock" do
    new_os = OperatingSystem.create(name: "osx")
    new_phone = Phone.create(name: "iPhone 6", operating_system: new_os, manufacturer: "mo", screen_size: "6 inches", charging_port: "usb", quantity: 10)

    visit phones_path


    expect(page.current_path).to eq phones_path
    expect(page).to have_content("In stock")
    expect(page).to have_content("iPhone 6")
  end
end
