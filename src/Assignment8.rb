
class Address_book
   def initialize
     @address_book = []
   end

   def display_info
        if @address_book.empty?
          puts "Address Book is empty!"
        else
          @address_book.sort_by! {|k| k["FirstName"]}
          @address_book.each do |contact|
            puts "#{contact}\n"
          end
        end

   end

   def add_contact(first_name,last_name,phone,street,city,state,zip)

    contact = {
                "FirstName"=>first_name,
                "LastName"=>last_name,
                "Phone"=>phone,
                "Street"=>street,
                "City"=>city,
                "State"=>state,
                "Zip"=>zip
    }
    @address_book << contact

   end
   def delete_contact
      puts "Enter First Name of contact to delete:"
      value = gets.chomp
       if @address_book.any? {|h| h["FirstName"] == value}
        @address_book.delete_if {|h| h["FirstName"] == value}
        puts 'Contact deleted!'
       else
         puts 'Contact does not exist!'
       end
   end
   def edit_contact
     puts @address_book
     puts "Enter First Name of contact to edit"
     contact_fn = gets.chomp
     #required_hash = @address_book.find {|x| x["FirstName"] == contact_fn}
     required_hash = @address_book.find {|x| x.key(contact_fn)}
     puts "#{required_hash}"
     puts "Enter field name to edit for this contact"
     field = gets.chomp
     puts "Enter new value for #{field}:"
     value = gets.chomp
     required_hash[field] = value
     puts @address_book
   end
  def search_contact
      puts "Enter First Name, Last Name, Phone, Street, City, State, Zip to search for a contact:"
      contact_id = gets.chomp
      puts @address_book.find {|x| x.key(contact_id)}
  end
end

obj = Address_book.new()
puts "Welcome to your address book! Enter one of the options below:"
loop do
puts " 1. Print contact details\n 2. Add new contact\n 3. Delete contact\n 4. Edit contact\n 5.Search contact\n 6. Exit"
option = gets.chomp.to_i
case option
when 1
  obj.display_info
when 2
  puts "Enter below details:"
  puts "First Name: "
  first_name = gets.chomp
  puts "Last Name:"
  last_name = gets.chomp
  puts "Phone Number:"
  phone = gets.chomp
  puts "Street:"
  street = gets.chomp
  puts "City:"
  city = gets.chomp
  puts "State:"
  state = gets.chomp
  puts "Zip:"
  zip = gets.chomp
  obj.add_contact(first_name,last_name,phone,street,city,state,zip)
when 3
  obj.delete_contact
when 4
  obj.edit_contact
when 5
  obj.search_contact
when 6
  exit
else
  puts 'Invalid input!'
end
end

