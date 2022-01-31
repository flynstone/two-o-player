class Question
  
  attr_reader :first, :second

  def initialize
    @first = rand(20)
    @second = rand(20)
  end

  def question
    "What does #{@first} plus #{@second} equals?"
  end
end

question = Question.new
puts question.question