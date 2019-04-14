#Find length, concatenate, characters and positions

puts "Enter 1st string:"
string1 = gets.chomp
puts "Enter 2nd string:"
string2 = gets.chomp

puts "Length of 1st string: #{string1.length} and Length of 2nd string: #{string2.length}"
puts "Concatenated string: #{string1+string2}"
puts "1st string: 3rd char: #{string1[2]}, Last char: #{string1[string1.length-1]}"
puts "1st string: 3rd char: #{string2[2]}, Last char: #{string2[string2.length-1]}"