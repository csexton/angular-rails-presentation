require 'spec_helper'

describe Slide do
  describe ".all" do
    it "creates an array of objects from the 'slides' dir" do
      expect(Slide.all).to_not be_empty
    end

    it "populates the array with Slide classes" do
      expect(Slide.all.first.class).to eq Slide
    end
  end

  describe ".find" do
    it "finds the welcome slide" do
      expect(Slide.find("1").name).to eq "welcome"
    end
  end

  describe "processing markdown" do
    pending "prove that we can parse the markdown into html"
  end
end
