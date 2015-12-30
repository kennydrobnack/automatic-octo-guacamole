require 'rspec'
require 'roman_numeral'

#Test cases:
# Convert Roman Numeral to Arabic Number
# Numeral	Number
# I	1
# III	3
# IX	9
# MLXVI	1066
# MCMLXXXIX	1989


RSpec.describe RomanNumeral do
  it 'Converts number 1 to I correctly' do
    roman_one = RomanNumeral.new("I")
    expect(roman_one.to_arabic_numeral).to eq(1)
  end
end