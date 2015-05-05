require 'rails_helper'

RSpec.describe Zebra, type: :model do
  it "should have a weight" do
    expect(subject).to have_attribute(:weight)
  end

  it "is invalid without a weight" do
    expect(subject).to be_invalid
  end

  it "is valid with a weight" do
    subject.weight = 810.45
    expect(subject).to be_valid
  end
end
