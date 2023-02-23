# frozen_string_literal: true

class AnswersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_answer, only: %i[destroy]
  before_action :get_question, only: %i[create]

  def create
    @answer = @question.answers.new(answer_params)
    if @answer.save
      respond_to do |format|
        format.js
      end
    else
      redirect_to question_url(@question), alert: 'Something went wrong ...'
    end
  end
  

  def destroy
    authorize @answer
    if @answer.destroy
      respond_to do |format|
        format.js
      end
    else
      flash[:alert] = 'Something went wrong ...'
    end
  end

  private

  def get_question
    @question = Question.find_by(id: params[:question_id])
    return if @question

    redirect_to root_path
  end

  def set_answer
    @answer = Answer.find_by(id: params[:id])
    return if @answer

    redirect_to root_path
  end

  def answer_params
    Rails.logger.debug 'Answer params'
    Rails.logger.debug params
    params.require(:answer).permit(:text, :user_id)
  end
end
