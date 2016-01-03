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

  #Test error case
  it 'to_roman_numeral errors out on unknown numbers' do
    bad_arabic_number = ArabicNumeral.new(-1)
    expect(bad_arabic_number.to_roman_numeral).to eq("Unknown number -1")
  end

  #Test single character Roman numerals
  it 'to_roman_numeral converts number 1 to I correctly' do
    arabic_number = ArabicNumeral.new(1)
    expect(arabic_number.to_roman_numeral).to eq("I")
  end

  it 'to_roman_numeral converts number 5 to V correctly' do
    arabic_number = ArabicNumeral.new(5)
    expect(arabic_number.to_roman_numeral).to eq("V")
  end

  it 'to_roman_numeral converts number 10 to X correctly' do
    arabic_number = ArabicNumeral.new(10)
    expect(arabic_number.to_roman_numeral).to eq("X")
  end

  it 'to_roman_numeral converts number 50 to L correctly' do
    arabic_number = ArabicNumeral.new(50)
    expect(arabic_number.to_roman_numeral).to eq("L")
  end

  it 'to_roman_numeral converts number 100 to C correctly' do
    arabic_number = ArabicNumeral.new(100)
    expect(arabic_number.to_roman_numeral).to eq("C")
  end

  it 'to_roman_numeral converts number 500 to D correctly' do
    arabic_number = ArabicNumeral.new(500)
    expect(arabic_number.to_roman_numeral).to eq("D")
  end

  it 'to_roman_numeral converts number 1000 to M correctly' do
    arabic_number = ArabicNumeral.new(1000)
    expect(arabic_number.to_roman_numeral).to eq("M")
  end

  #Test basic subtraction cases (4 is IV, 9 is IX, etc)
  it 'to_roman_numeral converts 4 to IV correctly' do
    arabic_number = ArabicNumeral.new(4)
    expect(arabic_number.to_roman_numeral).to eq("IV")
  end

  it 'to_roman_numeral converts 9 to IX correctly' do
    arabic_number = ArabicNumeral.new(9)
    expect(arabic_number.to_roman_numeral).to eq("IX")
  end

  it 'to_roman_numeral converts 40 to XL correctly' do
    arabic_number = ArabicNumeral.new(40)
    expect(arabic_number.to_roman_numeral).to eq("XL")
  end

  it 'to_roman_numeral converts 90 to XC correctly' do
    arabic_number = ArabicNumeral.new(90)
    expect(arabic_number.to_roman_numeral).to eq("XC")
  end

  it 'to_roman_numeral converts 400 to CD correctly' do
    arabic_number = ArabicNumeral.new(400)
    expect(arabic_number.to_roman_numeral).to eq("CD")
  end

  it 'to_roman_numeral converts 900 to CM correctly' do
    arabic_number = ArabicNumeral.new(900)
    expect(arabic_number.to_roman_numeral).to eq("CM")
  end

  #Test repeating characters work correctly
  it 'to_roman_numeral converts number 3 to III correctly' do
    arabic_number = ArabicNumeral.new(3)
    expect(arabic_number.to_roman_numeral).to eq("III")
  end

  it 'to_roman_numeral converts number 3 to III correctly' do
    arabic_number = ArabicNumeral.new(3)
    expect(arabic_number.to_roman_numeral).to eq("III")
  end

  it 'to_roman_numeral converts number 30 to XXX correctly' do
    arabic_number = ArabicNumeral.new(30)
    expect(arabic_number.to_roman_numeral).to eq("XXX")
  end

  #Larger test cases from problem description
  it 'to_roman_numeral converts 1066 to MLXVI' do
    arabic_number = ArabicNumeral.new(1066)
    expect(arabic_number.to_roman_numeral).to eq("MLXVI")
  end

  it 'to_roman_numeral converts 1989 to MCMLXXXIX' do
    arabic_number = ArabicNumeral.new(1989)
    expect(arabic_number.to_roman_numeral).to eq("MCMLXXXIX")
  end

end