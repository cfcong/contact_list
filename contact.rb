class Contact
  
  attr_accessor :first_name
  attr_accessor :last_name
  attr_accessor :email
  
  def initialize(name, email)
    # TODO: assign local variables to instance variables
    name = name.split(' ')
    @first_name = name[0]
    @last_name = name[1]
    @email = email
  end

  def full_name
  	"#{@first_name} #{@last_name}"
  end
  
  def to_s
    # TODO: return string representation of Contact
    puts "[i]: #{@first_name} #{@last_name} #{@email}"
  end
  
end