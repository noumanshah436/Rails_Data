# frozen_string_literal: true

class HomeController < ApplicationController
  before_action :authenticate_user!

  def index
    @q = Topic.ransack(params[:q])
    @topics = @q.result(distinct: true)

    @all_topics = Topic.all
    # @questions = current_user.followed_topics_questions
  end
end
