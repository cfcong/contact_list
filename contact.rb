class Contact
  
  attr_accessor :first_name
  attr_accessor :last_name
  attr_accessor :email
  
  def initialize(name, email)
    # TODO: assign local variables to instance variables
    name = gets.chomp
    email = gets.chomp
    @name = name
    @email = email
  end
  
  def to_s
    # TODO: return string representation of Contact
    puts "This contact's name is: #{@name}, and has an email: #{@email} "
  end
  
end