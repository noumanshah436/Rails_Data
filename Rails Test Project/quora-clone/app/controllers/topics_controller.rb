# frozen_string_literal: true

class TopicsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_topic, only: %i[show edit update destroy]

  def index
    @topics = Topic.all.with_includes_user
  end

  def show
    @questions = @topic.questions.with_answers_and_users.page(params[:page])
  end

  def new
    @topic = Topic.new
  end

  def edit
    authorize @topic
  end

  def create
    @topic = current_user.topics.new(topic_params)
    if @topic.save
      redirect_to topic_url(@topic), notice: 'Topic was successfully created.'
    else
      render :new, alert: 'Something went wrong ...'
    end
  end

  def update
    authorize @topic
    if @topic.update(topic_params)
      redirect_to topic_url(@topic), notice: 'Topic was successfully updated.'
    else
      render :edit, alert: 'Something went wrong ...'
    end
  end

  def destroy
    authorize @topic
    if @topic.destroy
      redirect_to topics_url, notice: 'Topic was successfully destroyed.'
    else
      redirect_to topics_url, alert: 'Something went wrong ...'
    end
  end

  private

  def set_topic
    @topic = Topic.find_by(id: params[:id])
    return if @topic

    redirect_to root_path
  end

  def topic_params
    params.require(:topic).permit(:title, :desc, :picture)
  end
end
