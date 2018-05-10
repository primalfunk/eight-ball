class Answers
   
    def insults
    [
        "Please jump off a cliff", 
        "Contrary to popular belief, smoking saves lives",
        "It's really mediocre",
        "Yo mama"
    ]
    end

    def hurl
        puts insults.sample(1)
    end


  def nice_answers
    [
      "Yes",
      "No",
      "Ask again later",
      "Pobably not smart",
      "It is decidedly so",
      "Ask again later"
    ]
  end

  def self.random_answer
    nice_answers[Random.rand(nice_answers.size)]
    puts nice_answers.sample
  end

  
end

