# frozen_string_literal: true

class VotesController < ApplicationController
  before_action :authenticate_user!
  before_action :find_vote, only: %i[destroy update]

  def create
    @vote = @votable.votes.new(vote_params)
    if @vote.save
      respond_to do |format|
        format.js
      end
    else
      flash[:alert] = 'Something went wrong ...'
    end
  end

  def update
    authorize @vote
    if @vote.update(vote_params)
      respond_to do |format|
        format.js
      end
    else
      flash[:alert] = 'Something went wrong ...'
    end
  end

  def destroy
    authorize @vote
    if @vote.destroy
      respond_to do |format|
        format.js
      end
    else
      flash[:alert] = 'Something went wrong ...'
    end
  end

  private

  def find_vote
    @vote = Vote.find_by(id: params[:id])
    return if @vote

    redirect_to root_path
  end

  def vote_params
    params.permit :status, :user_id
  end
end
