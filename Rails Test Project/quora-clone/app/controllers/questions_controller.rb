# frozen_string_literal: true

class QuestionsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_question, only: %i[show edit update destroy]

  def index
    @questions = Question.all
  end

  def show; end

  def edit
    authorize @question
  end

  def new
    @question = Question.new
  end

  def create
    @question = current_user.questions.new(question_params)
    if @question.save
      redirect_to question_url(@question), notice: 'Question was successfully created.'
    else
      render :new, alert: 'Something went wrong ...'
    end
  end

  def update
    authorize @question
    if @question.update(question_params)
      redirect_to question_url(@question), notice: 'Question was successfully updated.'
    else
      render :edit, alert: 'Something went wrong ...'
    end
  end

  def destroy
    authorize @question
    if @question.destroy
      redirect_to questions_url, notice: 'Question was successfully destroyed.'
    else
      redirect_to topics_url, alert: 'Something went wrong ...'
    end
  end

  private

  def set_question
    @question = Question.find_by(id: params[:id])
    return if @question

    redirect_to root_path
  end

  def question_params
    params.require(:question).permit(:text, topic_ids: [])
  end
end
