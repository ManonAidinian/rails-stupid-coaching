class QuestionsController < ApplicationController

  def home
  end

  def ask
  end

  def answer
    @answer_to_keep = params[:question]
    if @answer_to_keep == 'I am going to work'
      @coach_answer = 'Great!'
    elsif @answer_to_keep.include?('?')
      @coach_answer = 'Silly question, get dressed and go to work!'
    else
      @coach_answer = 'I don\'t care, get dressed and go to work!'
    end
  end
end
