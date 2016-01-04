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


  #Test error case
  it 'to_arabic_numeral errors out on unknown numbers' do
    bad_roman_number = RomanNumeral.new("FOO")
    expect(bad_roman_number.to_arabic_numeral).to eq("Invalid Roman Numeral FOO")
  end

  it 'to_arabic_numeral converts number I to 1 correctly' do
    roman_number = RomanNumeral.new("I")
    expect(roman_number.to_arabic_numeral).to eq(1)
  end

  it 'to_arabic_numeral converts number V to 5 correctly' do
    roman_number = RomanNumeral.new("V")
    expect(roman_number.to_arabic_numeral).to eq(5)
  end

  it 'to_arabic_numeral converts number X to 10 correctly' do
    roman_number = RomanNumeral.new("X")
    expect(roman_number.to_arabic_numeral).to eq(10)
  end

  it 'to_arabic_numeral converts number L to 50 correctly' do
    roman_number = RomanNumeral.new("L")
    expect(roman_number.to_arabic_numeral).to eq(50)
  end

  it 'to_arabic_numeral converts number C to 100 correctly' do
    roman_number = RomanNumeral.new("C")
    expect(roman_number.to_arabic_numeral).to eq(100)
  end

  it 'to_arabic_numeral converts number D to 500 correctly' do
    roman_number = RomanNumeral.new("D")
    expect(roman_number.to_arabic_numeral).to eq(500)
  end

  it 'to_arabic_numeral converts number M to 1000 correctly' do
    roman_number = RomanNumeral.new("M")
    expect(roman_number.to_arabic_numeral).to eq(1000)
  end

  #Test basic subtraction cases (4 is IV, 9 is IX, etc)
  it 'to_arabic_numeral converts IV to 4 correctly' do
    roman_number = RomanNumeral.new("IV")
    expect(roman_number.to_arabic_numeral).to eq(4)
  end

  it 'to_arabic_numeral converts IX to 9 correctly' do
    roman_number = RomanNumeral.new("IX")
    expect(roman_number.to_arabic_numeral).to eq(9)
  end

  it 'to_arabic_numeral converts XL to 40 correctly' do
    roman_number = RomanNumeral.new("XL")
    expect(roman_number.to_arabic_numeral).to eq(40)
  end

  it 'to_arabic_numeral converts XC to 90 correctly' do
    roman_number = RomanNumeral.new("XC")
    expect(roman_number.to_arabic_numeral).to eq(90)
  end

  it 'to_arabic_numeral converts CD to 400 correctly' do
    roman_number = RomanNumeral.new("CD")
    expect(roman_number.to_arabic_numeral).to eq(400)
  end

  it 'to_arabic_numeral converts CM to 900 correctly' do
    roman_number = RomanNumeral.new("CM")
    expect(roman_number.to_arabic_numeral).to eq(900)
  end

  it 'to_arabic_numeral converts number II to 2  correctly' do
    roman_number = RomanNumeral.new("II")
    expect(roman_number.to_arabic_numeral).to eq(2)
  end

  it 'to_arabic_numeral converts number III to 3 correctly' do
    roman_number = RomanNumeral.new("III")
    expect(roman_number.to_arabic_numeral).to eq(3)
  end

	it 'to_arabic_numeral converts XX to 20 correctly' do
		roman_number = RomanNumeral.new("XX")
		expect(roman_number.to_arabic_numeral).to eq(20)
	end

  it 'to_arabic_numeral converts number XXX to 30 correctly' do
    roman_number = RomanNumeral.new("XXX")
    expect(roman_number.to_arabic_numeral).to eq(30)
  end

	it 'to_arabic_numeral converts CC to 200 correctly' do
		roman_number = RomanNumeral.new("CC")
		expect(roman_number.to_arabic_numeral).to eq(200)
	end

  it 'to_arabic_numeral converts number CCC to 300 correctly' do
    roman_number = RomanNumeral.new("CCC")
    expect(roman_number.to_arabic_numeral).to eq(300)
  end

	it 'to_arabic_numeral converts MM to 2000 correctly' do
		roman_number = RomanNumeral.new("MM")
		expect(roman_number.to_arabic_numeral).to eq(2000)
	end

  it 'to_arabic_numeral converts number MMM to 3000 correctly' do
    roman_number = RomanNumeral.new("MMM")
    expect(roman_number.to_arabic_numeral).to eq(3000)
  end

  #Larger test cases from problem description
  it 'to_arabic_numeral converts MLXVI to 1066' do
    roman_number = RomanNumeral.new("MLXVI")
    expect(roman_number.to_arabic_numeral).to eq(1066)
  end

  it 'to_arabic_numeral converts MCMLXXXIX to 1989' do
    roman_number = RomanNumeral.new("MCMLXXXIX")
    expect(roman_number.to_arabic_numeral).to eq(1989)
  end

	#Interesting edge cases
	it 'to_arabic_numeral converts XLII to 42' do #Must include this somewhere :-)
		roman_number = RomanNumeral.new("XLII")
		expect(roman_number.to_arabic_numeral).to eq(42)
	end	

	it 'to_arabic_numeral converts XLIX to 49' do
		roman_number = RomanNumeral.new("XLIX")
		expect(roman_number.to_arabic_numeral).to eq(49)
	end

	it 'to_arabic_numeral converts LXXXVIII to 88' do #Most repeating characters under 100
		roman_number = RomanNumeral.new("LXXXVIII")
		expect(roman_number.to_arabic_numeral).to eq(88)
	end

	it 'to_arabic_numeral converts XCIX to 99' do
		roman_number = RomanNumeral.new("XCIX")
		expect(roman_number.to_arabic_numeral).to eq(99)
	end

	it 'to_arabic_numeral converts CL to 150' do
		roman_number = RomanNumeral.new("CL")
		expect(roman_number.to_arabic_numeral).to eq(150)
	end

	it 'to_arabic_numeral converts CDXCIX to 499' do
		roman_number = RomanNumeral.new("CDXCIX")
		expect(roman_number.to_arabic_numeral).to eq(499)
	end

	it 'to_arabic_numeral converts DCCCLXXXVIII to 888' do #Most repeating characters under 1000
		roman_number = RomanNumeral.new("DCCCLXXXVIII")
		expect(roman_number.to_arabic_numeral).to eq(888)
	end

	it 'to_arabic_numeral converts CMXCIX to 999' do 
		roman_number = RomanNumeral.new("CMXCIX")
		expect(roman_number.to_arabic_numeral).to eq(999)
	end

	it 'to_arabic_numeral converts MD to 1500' do
		roman_number = RomanNumeral.new("MD")
		expect(roman_number.to_arabic_numeral).to eq(1500)
	end

	it 'to_arabic_numeral converts MMMDCCCLXXXVIII to 3888' do #Most characters we can do with current character set
		roman_number = RomanNumeral.new("MMMDCCCLXXXVIII")
		expect(roman_number.to_arabic_numeral).to eq(3888)
	end

	it 'to_arabic_numeral converts MMMCMXCIX to 3999' do #Largest number we can handle with current set
		roman_number = RomanNumeral.new("MMMCMXCIX")
		expect(roman_number.to_arabic_numeral).to eq(3999)
	end

end


