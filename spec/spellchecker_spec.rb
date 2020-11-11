require 'spellchecker.rb'

describe "spellchecker" do

  boiler = Boiler.new

  it "returns a correctly spelt word" do
    expect(boiler.spellchecker("one")).to eq("one")
  end

  it "returns correctly spelt words" do
    expect(boiler.spellchecker("two")).to eq("two")
  end

  it "returns a highlighted single uncorrectly spelt word" do
    expect(boiler.spellchecker("tww")).to eq("~tww~")
  end

  it "returns a highlighted single uncorrectly spelt word" do
    expect(boiler.spellchecker("tww")).to eq("~tww~")
  end

  it "spellchecks a string of muliple words" do
    expect(boiler.spellchecker("one two")).to eq("one two")
    expect(boiler.spellchecker("one tww")).to eq("one ~tww~")
    expect(boiler.spellchecker("one tww three four five Syx Seven eiight nine ten")).to eq("one ~tww~ three four five ~Syx~ Seven ~eiight~ nine ten")
  end

  it "spellchecks a capitalized word" do
    expect(boiler.spellchecker("Two")).to eq("Two")
    expect(boiler.spellchecker("tWo")).to eq("tWo")
  end

  it "raises an error if the input is anything but a string" do
    expect{ boiler.spellchecker(1) }.to raise_error("please only provide words")
  end

end