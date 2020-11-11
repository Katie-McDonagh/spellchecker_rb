require 'spellchecker.rb'

describe "spellchecker" do
  it "returns a correctly spelt word" do
    expect(spellchecker("one")).to eq("one")
  end

  it "returns correctly spelt words" do
    expect(spellchecker("one two")).to eq("one two")
  end

  it "returns a highlighted single uncorrectly spelt word" do
    expect(spellchecker("tww")).to eq("~tww~")
  end

end