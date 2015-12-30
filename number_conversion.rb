#!/usr/bin/env ruby

$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '.', 'lib'))
require 'arabic_numeral'


(1..100).each do |i|
  num = ArabicNumeral.new(i)
  puts "Converting #{i} to roman numeral #{num.to_roman_numeral}"
end