#Find the largest of three numbers

arr = []
puts "Enter the 3 numbers:"
3.times do |x|
  arr[x] = gets.chomp.to_i
end
puts "Array values are: #{arr}"
puts "Largest number is: #{arr.max}"

