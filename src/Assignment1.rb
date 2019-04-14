#set, get, increment a variable

class Variable
  attr_accessor :var

  def get
    puts "Variable value is: #{@var}"
  end

  def increment_var
    puts "Value incremented to #{self.var += 1}"
  end
end

obj = Variable.new()
puts "Set variable value: "
obj.var = gets.chomp.to_f
obj.get
obj.increment_var
