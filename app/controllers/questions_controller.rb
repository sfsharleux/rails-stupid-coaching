class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    @answer = coach(@question)
  end

  def coach(input)
    if input == "I'm going to work"
      'Great!'
    elsif input.include?('?')
      'Silly question, get dressed and go to work!'
    else "I don't care, get dressed and go to work!"
    end
  end
end
