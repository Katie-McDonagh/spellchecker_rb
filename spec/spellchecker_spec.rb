require 'spellchecker.rb'

describe "spellchecker" do
  it "returns a single correctly spelt word" do
    expect(spellchecker("one")).to eq("one")
  end

end