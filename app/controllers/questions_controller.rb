class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answer = answer
    # POST parameters coming from an HTML form that the user has submitted
    @question = params[:question]
    super
  end

  def coach_answer(question)
    if question.downcase == 'I am going to work'
    elsif question.end_with?('?')
      'Silly question, get dressed and go to work!'
    else
      "I don't care, get dressed and go to work!"
    end
  end
end
