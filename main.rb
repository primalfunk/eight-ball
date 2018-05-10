#Magic Eight Ball team project
require 'colorize'
#require 'answers'

puts "\n\n"
puts "*".colorize(:green) * 26
puts "Magic Eight Ball Simulator".colorize(:light_green)
puts "*".colorize(:green) * 26
puts "\n\n"

puts "a) Add an answer"
puts "b) Print all available answers"
puts "c) Reset answer base to defaults"
puts "q) Quit the program, or just"
print "Ask a question of the All-knowing Eight Ball: "
question = gets.strip

#handle user input
if question == 'a'
  #use the answers class method to add another answer to the array
elsif question == 'b'
  #class method to print all answers
elsif question == 'c'
  #class method to reset answer base to defaults
elsif question == 'q'
  puts "No more Eight Ball for you."
  exit
else
  answers.nice_answer
end



