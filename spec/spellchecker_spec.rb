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
    expect(spellchecker("one tww three four five Syx Seven eiight nine ten")).to eq("one ~tww~ three four five ~Syx~ Seven ~eiight~ nine ten")
  end

  it "spellchecks a capitalized word" do
    expect(spellchecker("Two")).to eq("Two")
  end

end