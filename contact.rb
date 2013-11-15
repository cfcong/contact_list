class Contact < ActiveRecord::Base
  
  def full_name
  	"#{first_name} #{last_name}"
  end
  
  def to_s
    # TODO: return string representation of Contact
    "#{first_name} #{last_name[0]} (#{email}) #{importance}"
  end
  
end