# frozen_string_literal: true

class FollowsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_topic, only: %i[create destroy]

  def create
    if current_user.follow_topic(@topic)
      @followers = @topic.users.count
      respond_to do |format|
        format.js
      end
    else
      flash[:alert] = 'Something went wrong ...'
    end
  end

  def destroy
    if current_user.unfollow_topic(@topic)
      @followers = @topic.users.count
      respond_to do |format|
        format.js
      end
    else
      flash[:alert] = 'Something went wrong ...'
    end
  end

  private

  def set_topic
    @topic = Topic.find_by(id: params[:id])
    return if @topic

    flash[:alert] = 'Topic not exist!'
    redirect_to root_path
  end
end
