# Copyright (c) 2020 Rodrigo Smith

class Interactions
  def self.say_hello_0
    puts "Hello! How are you?\n\n"
  end 

  def self.say_hello_1
    puts "Hi, what's up?\n\n"
  end 

  def self.say_hello_2
    puts "Hey there!\n\n"
  end 
  
  def self.say_goodbye_0
    puts "See you!\n\n"
  end 

  def self.say_goodbye_1
    puts "Bye!\n\n"
  end 

  def self.say_goodbye_2
    puts "Take care!\n\n"
  end 

  def self.say_sorry
    puts "Sorry, I did not understant.\n\n"
  end 
end

puts("     _____           _                                  _     _                       \n    |_   _|         | |                                | |   (_)                      \n      | |    _ __   | |_    ___   _ __    __ _    ___  | |_   _    ___    _ __    ___ \n      | |   | '_ \\  | __|  / _ \\ | '__|  / _` |  / __| | __| | |  / _ \\  | '_ \\  / __|\n     _| |_  | | | | | |_  |  __/ | |    | (_| | | (__  | |_  | | | (_) | | | | | \\__ \\ \n    |_____| |_| |_|  \\__|  \\___| |_|     \\__,_|  \\___|  \\__| |_|  \\___/  |_| |_| |___/")

puts("                                                        _  __   __     ___         __       
                                               _    __ (_)/ /_ / /    / _ \\ __ __ / /  __ __
                                              | |/|/ // // __// _ \\  / , _// // // _ \\/ // /
                                              |__,__//_/ \\__//_//_/ /_/|_| \\_,_//_.__/\\_, / 
                                                                                     /___/  ")
                                                                                      
puts("\nPlease, type a word or phrase, like 'hi', 'Hello', 'How are you?'. This app is just a demo of Ruby \nprogramming language, it does not implement machine learning concepts.\n\nMade by Rodrigo Smith Rodrigues | Copyright © - 2020\n\n\n")

begin
  loop do
    input = gets.chomp
    case input.downcase
      when 'hello','hi','hey'
        Interactions.send('say_hello_' + rand(0..2).to_s)
      when 'bye','goodbye','xoxo'
        Interactions.send('say_goodbye_' + rand(0..2).to_s)
      else
        Interactions.say_sorry
    end 
    exit if input == '^C'
  end
rescue Interrupt
  puts "\nExiting..."
end