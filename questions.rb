class Questions
  
  def question_gen
    num1 = rand(1...20)
    num2 = rand(1...20)
    return num1, num2
  end

  def check_answer(input, answer)
    if input == answer
      true
    else
      false
    end
  end

end

# question = Questions.new
# puts question.check_answer(20)