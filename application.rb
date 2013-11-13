class Application
 
  def initialize
    # Start with an empty array of contacts.
    # TODO: Perhaps stub (seed) some contacts so we don't have to create some every time we restart the app
    @contacts = []
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
        puts "Please enter your email"
        email = gets.chomp
        new_contact = Contact.new(full_name, email)
        @contacts << new_contact
        puts "Your contact card was created."
      elsif input == "list"
        @contacts.each_with_index do |contact, i| 
          puts "#{i}: #{contact}"
        end  
      elsif input == "show"
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
    puts " show :id - Display contact details"
    print "> "
  end
 
end