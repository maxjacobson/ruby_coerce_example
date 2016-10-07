require 'age'

describe Age do
  it "is a simple value object" do
    expect(Age.new(28)).to be > Age.new(27)
    expect(Age.new(25)).to be < Age.new(28)
    expect(Age.new(28)).to be <= Age.new(28)
    expect(Age.new(28)).to eq Age.new(28)
  end

  it "can compare to raw numbers" do
    expect(Age.new(28)).to be > 27
    expect(Age.new(25)).to be < 28
    expect(Age.new(28)).to be <= 28
    expect(Age.new(28)).to eq 28
  end

  it "raw numbers can compare to it" do
    pending "Currently fails :("
    expect(28).to be > Age.new(27)
    expect(25).to be < Age.new(28)
    expect(28).to be <= Age.new(28)
    expect(28).to eq Age.new(28)
  end
end
