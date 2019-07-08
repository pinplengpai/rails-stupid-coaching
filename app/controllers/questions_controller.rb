class QuestionsController < ApplicationController
  def ask; end
  # try not to delete even though it works without this method

  def answer
    @question = params[:questions]
    # we need to get the value from params in order to store the question.
    if @question.eql? 'I am going to work'
      @answer = 'Great!'
    elsif @question.end_with?('?')
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
      # we create @ = instance variable in order to use outside of the method.
    end
  end
end
