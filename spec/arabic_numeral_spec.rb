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
end