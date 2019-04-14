#Inheritance

class Vehicle                       #Super Class
  def number_of_wheels
    puts "The car has 4 wheels!"
  end

  def car_color(color)
    puts "The car's color is #{color}"
  end

  def car_size(size)
    puts "The car is of the size class #{size}"
  end
end

class Car < Vehicle                 #Car class inherits methods of Vehicle class
   def car_model(model)
      puts "Car model: #{model}"
   end

end

obj = Car.new                       #object of Car class can now access the methods of Vehicle class
obj.number_of_wheels()
obj.car_color("Blue")
obj.car_size("Sedan")
obj.car_model("XUV500")