<<<<<<< HEAD
class answers
  def initialize
    
  end
end
=======
class Answers
   
    def insults
    [
        "Please jump off a cliff", 
        "Contrary to popular belief, smoking saves lives",
        "It's really mediocre",
        ""
    ]
    end

    def hurl
        puts insults.sample(1)
    end
end

output = Answers.new

output.hurl

>>>>>>> initial commit
