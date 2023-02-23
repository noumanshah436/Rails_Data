# frozen_string_literal: true

class Answers::VotesController < VotesController
  before_action :set_votable, only: %i[create update destroy]

  private

  def set_votable
    @votable = Answer.find(params[:answer_id])
  end
end
