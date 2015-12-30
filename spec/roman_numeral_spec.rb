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

  it 'Converts number III to 3' do
    roman_three = RomanNumeral.new("III")
    expect(roman_three.to_arabic_numeral).to eq(3)
  end

  it 'Converts number IX to 9' do
    roman_nine = RomanNumeral.new("IX")
    expect(roman_nine.to_arabic_numeral).to eq(9)
  end

  it 'Converts MLXVI to 1066' do
    roman_1066 = RomanNumeral.new("MLXVI")
    expect(roman_1066.to_arabic_numeral).to eq(1066)
  end


end