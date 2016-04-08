require 'rails_helper'

describe Phone do
  it { is_expected.to belong_to(:operating_system) }

  it { is_expected.to have_valid(:manufacturer).when("Apple")}
  it { is_expected.to_not have_valid(:manufacturer).when(nil)}


  it { is_expected.to have_valid(:screen_size).when("Small")}
  it { is_expected.to_not have_valid(:screen_size).when(nil)}

  it { is_expected.to have_valid(:operating_system).when(OperatingSystem.create(name: "El Capitan"))}
  it { is_expected.to_not have_valid(:operating_system).when(nil)}

  it { is_expected.to have_valid(:charging_port).when("Lightning")}
  it { is_expected.to_not have_valid(:charging_port).when(nil)}

  it { is_expected.to have_valid(:name).when("iPhone 6") }
  it { is_expected.to_not have_valid(:name).when(nil)}

  it { is_expected.to have_valid(:quantity).when("2") }
  it { is_expected.to_not have_valid(:quantity).when("-1")}
end
