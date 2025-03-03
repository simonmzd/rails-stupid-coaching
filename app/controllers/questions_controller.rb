class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answers = ['Great!', 'Silly question, get dressed and go to work!', "I don't care, get dressed and go to work!"]

    if params[:ask] == 'I am going to work'
      @response = @answers[0]
    elsif params[:ask].include?('?')
      @response = @answers[1]
    else
      @response = @answers[2]
    end
  end
end
