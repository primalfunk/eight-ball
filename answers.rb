class Answers
  attr_accessor :response_arr, :random_answer, :add_new_answer, :print_all, :reset_array
  
  def initialize(arr)
    #When the class initializes, it sets this class instance variable to the argument; the original list of answers lives on main.rb.
    #It also sets an instance variable for the counter @i, which tracks how many times the user has added a new answer to the array. 
    #This is so we can "pop" off the right number in the reset_array function.
    @answer_list = arr
    @i = 0
  end
  
  def random_answer
    #in the class, the main list of answers is @answer_list. Doesn't matter what it is called in the main file.
    puts @answer_list.sample
  end

  def add_new_answer(new_answer)
    #pushes the argument variable onto @answerlist, increments the counter @i
    @answer_list << new_answer
    @i += 1
    puts "\nAdded answer: #{new_answer}"
  end

  def print_all(arr)
    puts "\n\n"
    puts arr
  end

  def reset_array
    #uses the 'answers added' counter @i to pop off the @answer list end, then resets the counter to 0.
    @answer_list.pop(@i)
    puts "\nAnswers reset to values at init."
    @i = 0
  end
end
