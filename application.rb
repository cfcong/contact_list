class Application
 
  def initialize
  end
 
  def run
    loop do
      show_main_menu
      input = gets.chomp
      if input == "quit"
        puts "adéu"
        Kernel.exit
      elsif input == "new"
        puts "Please enter your full name"
        full_name = gets.chomp
        name = full_name.split(' ')
        first_name = name[0]
        last_name = name[0]
        puts "Please enter your email"
        email = gets.chomp
        puts "Please enter an importance value between 1 and 5 (1 being most important and 5 being least imporrtant"
        importance = gets.chomp
        new_contact = Contact.create(first_name: first_name, last_name: last_name, email: email, importance: importance)
        puts "Your contact card was created."
      elsif input == "list"
        Contact.all.each do |contact, i| 
          puts "#{i}: #{contact} "
        end  
      elsif input.include?("show")
      elsif input.include?("delete") 
        num = input.split(' ')
        id = num[1]
        new_contact = Contact.find(id)
        new_contact.destroy
        puts "Deleted the contact."
      elsif input == "list most important"
        puts "I have not done it! Sorry, I'll get it done by the EOD"
      else
        puts "I don't understand."
      end
    end 
  end
  
  # Prints the main menu only
  def show_main_menu
    puts "Welcome to the app. What's next?"
    puts " new      - Create a new contact"
    puts " list     - List all contacts"
    puts " delete :id - Deletes contact"
    print "> "
  end
 
end