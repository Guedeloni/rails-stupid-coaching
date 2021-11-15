class QuestionsController < ApplicationController
  def ask
  end

  def answer
    # p params
    if params[:question].include? '?'
      @answer = 'Silly question, get dressed and go to work !'
    elsif params[:question].downcase == 'i am going to work right now !'
      @answer = 'Great !'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
