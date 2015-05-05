require 'rails_helper'

RSpec.describe Giraffe, type: :model do
  it "should have a height" do
    expect(subject).to have_attribute(:height)
  end

  it "is invalid without a height" do
    expect(subject).to be_invalid
  end

  it "is valid with a height" do
    subject.height = 16.5
    expect(subject).to be_valid
  end

  it "should be able to guess age" do
    expect(subject).to respond_to(:guess_age)
    subject.height = 16.5
    age = subject.guess_age
    expect(age).to_not be_nil
  end
end
