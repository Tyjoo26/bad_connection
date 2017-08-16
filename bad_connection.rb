class BadConnection


  def initialize
    @welcome = p "HELLO, THIS IS A GROCERY STORE!"
  end

  def start_interaction
    user_input = gets.chomp
    if user_input == ""
      p "HELLO?!"
        start_interaction
    elsif user_input.chars.any? { |char| ('a'..'z').include? user_input.downcase }
      p "I AM HAVING A HARD TIME HEARING YOU."
        start_interaction
    elsif user_input.chars.any? { |char| ('A'..'Z').include? user_input.upcase }
      p "NO, THIS IS NOT A PET STORE"
        start_interaction
    else user_input == "GOODBYE!"
      p "ANYTHING ELSE I CAN HELP WITH?"
        good_bye
    end
  end

  def good_bye
    if user_input == "GOODBYE!"
      p "THANK YOU FOR CALLING!"
      exit
    else user_input != "GOODBYE!"
      start_interaction
    end
  end



badconnection = BadConnection.new
badconnection.start_interaction
end
