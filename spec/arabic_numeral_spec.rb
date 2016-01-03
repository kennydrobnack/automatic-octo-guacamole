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
  it 'to_roman_numeral converts number 2 to II correctly' do
    arabic_number = ArabicNumeral.new(2)
    expect(arabic_number.to_roman_numeral).to eq("II")
  end

  it 'to_roman_numeral converts number 3 to III correctly' do
    arabic_number = ArabicNumeral.new(3)
    expect(arabic_number.to_roman_numeral).to eq("III")
  end

	it 'to_roman_numeral converts 20 to XX correctly' do
		arabic_number = ArabicNumeral.new(20)
		expect(arabic_number.to_roman_numeral).to eq("XX")
	end

  it 'to_roman_numeral converts number 30 to XXX correctly' do
    arabic_number = ArabicNumeral.new(30)
    expect(arabic_number.to_roman_numeral).to eq("XXX")
  end

	it 'to_roman_numeral converts 200 to CC correctly' do
		arabic_number = ArabicNumeral.new(200)
		expect(arabic_number.to_roman_numeral).to eq("CC")
	end

  it 'to_roman_numeral converts number 300 to CCC correctly' do
    arabic_number = ArabicNumeral.new(300)
    expect(arabic_number.to_roman_numeral).to eq("CCC")
  end

	it 'to_roman_numeral converts 2000 to MM correctly' do
		arabic_number = ArabicNumeral.new(2000)
		expect(arabic_number.to_roman_numeral).to eq("MM")
	end

  it 'to_roman_numeral converts number 3000 to MMM correctly' do
    arabic_number = ArabicNumeral.new(3000)
    expect(arabic_number.to_roman_numeral).to eq("MMM")
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

	#Interesting edge cases
	it 'to_roman_numeral converts 42 to XLII' do #Must include this somewhere :-)
		arabic_number = ArabicNumeral.new(42)
		expect(arabic_number.to_roman_numeral).to eq("XLII")
	end	

	it 'to_roman_numeral converts 49 to XLIX' do
		arabic_number = ArabicNumeral.new(49)
		expect(arabic_number.to_roman_numeral).to eq("XLIX")
	end

	it 'to_roman_numeral converts 88 to LXXXVIII' do #Most repeating characters under 100
		arabic_number = ArabicNumeral.new(88)
		expect(arabic_number.to_roman_numeral).to eq("LXXXVIII")
	end

	it 'to_roman_numeral converts 99 to XCIX' do
		arabic_number = ArabicNumeral.new(99)
		expect(arabic_number.to_roman_numeral).to eq("XCIX")
	end

	it 'to_roman_numeral converts 150 to CL' do
		arabic_number = ArabicNumeral.new(150)
		expect(arabic_number.to_roman_numeral).to eq("CL")
	end

	it 'to_roman_numeral converts 499 to CDXCIX' do
		arabic_number = ArabicNumeral.new(499)
		expect(arabic_number.to_roman_numeral).to eq("CDXCIX")
	end

	it 'to_roman_numeral converts 888 to DCCCVXXXVIII' do #Most repeating characters under 1000
		arabic_number = ArabicNumeral.new(888)
		expect(arabic_number.to_roman_numeral).to eq("DCCCLXXXVIII")
	end

	it 'to_roman_numeral converts 999 to CMXCIX' do 
		arabic_number = ArabicNumeral.new(999)
		expect(arabic_number.to_roman_numeral).to eq("CMXCIX")
	end

	it 'to_roman_numeral converts 1500 to MD' do
		arabic_number = ArabicNumeral.new(1500)
		expect(arabic_number.to_roman_numeral).to eq("MD")
	end

	it 'to_roman_numeral converts 3888 to MMMDCCCLXXXVIII' do #Most characters we can do with current character set
		arabic_number = ArabicNumeral.new(3888)
		expect(arabic_number.to_roman_numeral).to eq("MMMDCCCLXXXVIII")
	end

	it 'to_roman_numeral converts 3999 to MMMCMXCIX' do #Largest number we can handle with current set
		arabic_number = ArabicNumeral.new(3999)
		expect(arabic_number.to_roman_numeral).to eq("MMMCMXCIX")
	end

end

