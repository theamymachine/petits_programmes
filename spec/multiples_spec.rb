require_relative "../lib/multiples.rb"

describe "is_multiple_of_3_or_5?" do
  it "should return true when an integer is a multiple of 3 or 5" do
    expect(is_multiple_of_3_or_5?(3)).to eq(true)
    expect(is_multiple_of_3_or_5?(5)).to eq(true)
    expect(is_multiple_of_3_or_5?(51)).to eq(true)
    expect(is_multiple_of_3_or_5?(45)).to eq(true)
  end 
  
  it "should return false when an integer is NOT a multiple of 3 or 5" do
    expect(is_multiple_of_3_or_5?(4)).to eq(false)
    expect(is_multiple_of_3_or_5?(16)).to eq(false)
    expect(is_multiple_of_3_or_5?(49)).to eq(false)
    expect(is_multiple_of_3_or_5?(56)).to eq(false)
  end 
end 

describe "sum_of_3_or_5_multiples" do
  it "should return an integer when a number between 0 and 1000 is entered" do 
    expect(sum_of_3_or_5_multiples(11)).to eq(33)
    expect(sum_of_3_or_5_multiples(5)).to eq(3)
    expect(sum_of_3_or_5_multiples(2)).to eq(0)
    expect(sum_of_3_or_5_multiples(3)).to eq(0)
  end
  it "should refuse the entry if number is not an integer bigger than 0 or smaller than 1000" do
    expect(sum_of_3_or_5_multiples(-1)).to eq("Try again, with a whole number bigger than 0 and smaller than 1000!")
    expect(sum_of_3_or_5_multiples(3.5)).to eq("Try again, with a whole number bigger than 0 and smaller than 1000!")
    expect(sum_of_3_or_5_multiples(0.08)).to eq("Try again, with a whole number bigger than 0 and smaller than 1000!")
    expect(sum_of_3_or_5_multiples("ttrrr")).to eq("Try again, with a whole number bigger than 0 and smaller than 1000!")
  end
end
