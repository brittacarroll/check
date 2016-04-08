require 'rails_helper'

describe OperatingSystem do
  it { is_expected.to have_many(:phones) }

  it { is_expected.to have_valid(:name).when("OS1", "OS2")}
  it { is_expected.to_not have_valid(:name).when(nil, "")}
end
