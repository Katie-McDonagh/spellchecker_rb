require 'spellchecker.rb'

describe "spellchecker" do
  it "returns a correctly spelt word" do
    expect(spellchecker("one")).to eq("one")
  end

  it "returns correctly spelt words" do
    expect(spellchecker("two")).to eq("two")
  end

  it "returns a highlighted single uncorrectly spelt word" do
    expect(spellchecker("tww")).to eq("~tww~")
  end

  it "returns a highlighted single uncorrectly spelt word" do
    expect(spellchecker("tww")).to eq("~tww~")
  end

  it "spellchecks a string of muliple words" do
    expect(spellchecker("one two")).to eq("one two")
    expect(spellchecker("one tww")).to eq("one ~tww~")
  end

end