RSpec.describe StringCalculator, "#add" do

  it "returns 0 for empty string" do
    expect(StringCalculator.add("")).to eql(0)
  end
   it "returns 0 for the string '0'" do
    expect(StringCalculator.add("0")).to eql(0)
  end
  it "returns 5 for the string '5'" do
    expect(StringCalculator.add("5")).to eql(5)
  end
 
  it "returns 3 for the string '1,2'" do
    expect(StringCalculator.add("1,2")).to eql(1+2)
  end
  it "returns 16 for the string '7,9'" do
    expect(StringCalculator.add("7,9")).to eql(7+9)
  end
  it "returns 57 for the string '12,45'" do
    expect(StringCalculator.add("12,45")).to eql(57)
  end
  
 
end   