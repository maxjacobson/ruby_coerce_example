require 'age'

describe Age do
  it "is a simple value object" do
    expect(Age.new(28) > Age.new(27)).to be true
    expect(Age.new(25) < Age.new(28)).to be true
    expect(Age.new(28) <= Age.new(28)).to be true
    expect(Age.new(28)).to eq Age.new(28)
  end

  it "can compare to raw numbers" do
    expect(Age.new(28) > 27).to be true
    expect(Age.new(25) < 28).to be true
    expect(Age.new(28) <= 28).to be true
    expect(Age.new(28)).to eq 28
  end

  it "raw numbers can compare to it" do
    pending "Currently fails :("
    expect(28 > Age.new(27)).to be true
    expect(25 < Age.new(28)).to be true
    expect(28 <= Age.new(28)).to be true
    expect(28).to eq Age.new(28)
  end
end
