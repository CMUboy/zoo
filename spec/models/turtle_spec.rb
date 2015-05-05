require 'rails_helper'

RSpec.describe Turtle, type: :model do
  it "should have a status" do
    expect(subject).to have_attribute(:status)
  end

  it "should be able to hide" do
    expect(subject).to respond_to(:hide)
    subject.hide
    expect(subject.status).to eq true
  end

  it "should be able to emerge" do
    expect(subject).to respond_to(:emerge)
    subject.emerge
    expect(subject.status).to eq false
  end
end
