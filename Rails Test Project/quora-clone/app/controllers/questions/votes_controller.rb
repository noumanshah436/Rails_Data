# frozen_string_literal: true

class Questions::VotesController < VotesController
  before_action :set_votable, only: %i[create update destroy]

  private

  def set_votable
    @votable = Question.find_by(id: params[:question_id])
    return if @votable

    redirect_to root_path
  end
end
