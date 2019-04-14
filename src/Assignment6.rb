#Count the number of even and odd numbers from a series of numbers

even_count = odd_count = 0
arr = [2, 3, 4, 5, 6, 7, 8, 9, 10]
puts "#{arr}"
arr.each_index do |i|
   if arr[i].even? ? even_count+=1 : odd_count+=1
   end
end
puts "Number of even numbers: #{even_count}"
puts "Number of odd numbers: #{odd_count}"