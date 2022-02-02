class Question
  attr_accessor :result

  def initialize
    # Generate and store 2 random numbers (between 1 and 20)
    @first_number = rand(1...20)
    @second_number = rand(1...20)
    # Store the correct answer in the variable result
    @result = @first_number + @second_number
  end

  def get_question
    puts "What does #{@first_number} plus #{@second_number} equal?"
  end

  def verify_result(validate) 
    @result == validate
  end
end

