class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:ask]
    if @question == 'I am going to work'
      @answer = 'Great!'
    elsif @question.strip.ends_with?("?")
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = 'I do not care, get dressed and go to work!'
    end
  end
end
