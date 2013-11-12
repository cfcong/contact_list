class Application
 
  def initialize
    # Start with an empty array of contacts.
    # TODO: Perhaps stub (seed) some contacts so we don't have to create some every time we restart the app
    @contacts = []
    @contacts << "Aaron" << "Betrice" << "Cody"
  end
 
  def run
    show_main_menu
    input = gets.chomp
    if input == "quit"
      puts "adéu"
      Kernel.exit
    elsif input == "new"
    elsif input == "list"
    else
      show_main_menu
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