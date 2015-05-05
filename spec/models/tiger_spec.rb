require 'rails_helper'

RSpec.describe Tiger, type: :model do
  it "should have an appetite" do
    expect(subject).to have_attribute(:appetite)
  end

  it "is invalid without an appetite" do
    subject.appetite = nil
    expect(subject).to be_invalid
  end

  it "is valid with an appetite" do
    expect(subject).to be_valid
  end

  it "has a default appetite" do
    expect(subject.appetite).to eq 100
  end

  it "should be hungry" do
    expect(subject).to be_hungry
  end

  it "should not be hungry" do
    subject.appetite = 0
    expect(subject).not_to be_hungry
  end

  describe "after eating" do
    before :each do
      @zebra = Zebra.create(weight: 800)
    end

    after :each do
      dead_zebra = Zebra.find_by_id(@zebra.id)
      expect(dead_zebra).to be_nil
    end

    it "should be hungry" do
      subject.appetite = 1000
      subject.eat(@zebra)
      expect(subject).to be_hungry
    end

    it "should not be hungry" do
      subject.appetite = 100
      subject.eat(@zebra)
      expect(subject).not_to be_hungry
    end
  end
end
