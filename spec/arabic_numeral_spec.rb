require 'rspec'
require 'arabic_numeral'

#Test cases:
#Convert Arabic Number to Roman Numeral
#Number	Numeral
#1	I
#3	III
#9	IX
#1066	MLXVI
#1989	MCMLXXXIX

RSpec.describe ArabicNumeral do
  it 'Converts number 1 to I correctly' do
    arabic_one = ArabicNumeral.new(1)
    expect(arabic_one.to_roman_numeral).to eq("I")
  end

  it 'Converts number 3 to III correctly' do
    arabic_three = ArabicNumeral.new(3)
    expect(arabic_three.to_roman_numeral).to eq("III")
  end

  it 'Converts 9 to IX correctly' do
    arabic_nine = ArabicNumeral.new(9)
    expect(arabic_nine.to_roman_numeral).to eq("IX")
  end

  it 'Converts 1066 to MLXVI' do
    arabic_1066 = ArabicNumeral.new(1066)
    expect(arabic_1066.to_roman_numeral).to eq("MLXVI")
  end

end