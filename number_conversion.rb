#!/usr/bin/env ruby

$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '.', 'lib'))
require 'arabic_numeral'
require 'roman_numeral'


(1..3999).each do |i|
  num = ArabicNumeral.new(i)
  rnum = RomanNumeral.new(num.to_roman_numeral)
  puts "Converting #{i} to roman numeral #{num.to_roman_numeral}"
  puts "And back to Arabic: #{rnum.to_arabic_numeral}"
end

negative = ArabicNumeral.new(-1)
too_big = ArabicNumeral.new(4000)
puts "Converting -1 to Roman Numeral: #{negative.to_roman_numeral}"
puts "Converting 4000 to Roman Numeral: #{too_big.to_roman_numeral}"


