#Magic Eight Ball team project
require 'colorize'
require_relative 'answers'

#I shortened the response array purely for readability reasons. Add as many as you like.
@response_array =
[
  "No",
  "It is decidedly so.",
  "Who cares?",
  "Get lost, creep.",
  "That may be the dumbest thing I have ever heard.",
  "Hey, look who knows how to press buttons on a keyboard! Good job, buddy."
]

#instantiating the answer list object with the array as above. In the answers class, this becomes @answer_list
answer_list = Answers.new(@response_array)

while true
  #drawing the pretty header/menu
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
    puts "\nPlease enter a new answer to add."
    resp = gets.strip
    answer_list.add_new_answer(resp)
  elsif question == 'b'
    answer_list.print_all(@response_array)
  elsif question == 'c'
    answer_list.reset_array
  elsif question == 'q'
    puts "\nNo more Eight Ball for you.".colorize("red")
    exit
  else
    answer_list.random_answer
  end
end



