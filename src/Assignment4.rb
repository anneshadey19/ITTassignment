#Sum of first 10 numbers using Blocks

total = 0
def sum
  puts "Sum of first 10 numbers is: "
  yield
end

sum{(1..10).each {|i| total+=i}}
puts total

